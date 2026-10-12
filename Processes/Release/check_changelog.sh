#!/bin/bash

pushd $@
items=`git log --pretty=oneline --first-parent "5.1.1".."release-candidate-5.2.0" | grep -oP '#[0-9]+'`
unlisted_items=()
for item in $items
do
  #echo "searching for in CHANGELOG.md: $item"
  num=`grep --count "$item" CHANGELOG.md`
  #echo "$item: found " $num " instances"
  if [[ $num -eq 0 ]]; then
    unlisted_items+=("$item")
  fi
done

for ul in ${unlisted_items[@]}
do
  url="https://github.com/kokkos/kokkos/pull/${ul:1}"
  echo "Check: $url"
done
popd


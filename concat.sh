#!/bin/bash

{
  wget -O- https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts | \
    sed -r \
      -e 's/[ \t]*#.*//' \
      -e 's/[ \t]*$//' \
      -e 's/^[ \t]*//' \
      -e 's/[ \t]*$//' \
      -e 's/[ \t][ \t]+/ /' \
      | sed -n '/^$/ !p' | sort -u
  echo -e "\n"
  sed -r 's/^/0.0.0.0 /' addendum
} > hosts

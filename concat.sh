#!/bin/bash

{
  wget -O- https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
  echo -e "\n\n# Addendum"
  sed -r 's/^/0.0.0.0 /' addendum
} > hosts

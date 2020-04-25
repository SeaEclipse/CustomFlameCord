#!/usr/bin/env bash

read -p 'Input file to patch -> ' originFile

read -p 'Patch everything or just FlameCord and Bungee-specific classes?(everything/specific) -> ' everspec

if [[ ""$everspec"" = everything ]]; then
  jar uf $originFile net/*
  jar uf $originFile com/*
  jar uf $originFile gnu/*
  jar uf $originFile io/*
  jar uf $originFile joptsimple/*
  jar uf $originFile META-INF/*
  jar uf $originFile META-INF/MANIFEST.MF
  jar uf $originFile mojang-translations/*
  jar uf $originFile org/*
elif [[ ""$everspec"" = specific ]]; then
  jar uf $originFile net/*
  jar uf $originFile com/*
  jar uf $originFile META-INF/*
  jar uf $originFile META-INF/MANIFEST.MF
fi

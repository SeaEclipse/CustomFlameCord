#!/usr/bin/env bash

read -p 'Input file to patch -> ' originFile

read -p 'Patch everything or just FlameCord and Bungee-specific classes?(everything/specific) -> ' everspec

if [[ ""$everspec"" = everything ]]; then
  echo
  echo 'Patching net/*...'
  jar uf $originFile net/*
  echo 'Patching com/*...'
  jar uf $originFile com/*
  echo 'Patching gnu/*...'
  jar uf $originFile gnu/*
  echo 'Patching io/*...'
  jar uf $originFile io/*
  echo 'Patching joptsimple/*...'
  jar uf $originFile joptsimple/*
  echo 'Updating META-INF/*... (Remember to add manually the MANIFEST.MF file, META-INF update currently buggy!)'
  jar uf $originFile META-INF/*
  echo 'Teorically updating MANIFEST.MF...'
  jar uf $originFile META-INF/MANIFEST.MF
  echo 'Updating mojang-translations/*...'
  jar uf $originFile mojang-translations/*
  echo 'Patching org/*...'
  jar uf $originFile org/*
elif [[ ""$everspec"" = specific ]]; then
  echo 'Patching net/*...'
  jar uf $originFile net/*
  echo 'Patching com/*...'
  jar uf $originFile com/*
  echo 'Updating META-INF/*... (Remember to add manually the MANIFEST.MF file, META-INF update currently buggy!)'
  jar uf $originFile META-INF/*
  echo 'Teorically updating MANIFEST.MF...'
  jar uf $originFile META-INF/MANIFEST.MF
fi

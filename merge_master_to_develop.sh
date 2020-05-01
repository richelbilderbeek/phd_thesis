#!/bin/bash
#
# Merge the master branch to the develop branch
#
#

for folder in $(ls -d */)
do

  cd $folder

  if [ -d ".git" ]
  then
    git checkout master
    git pull
    git checkout develop
    git pull
    git merge master
    git add --all :/
    git commit -m "EOD"
    git push
  fi

  cd ..
done


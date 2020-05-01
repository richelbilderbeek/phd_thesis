#!/bin/bash
#
# Merge the develop branch to the master branch
#
#

for folder in $(ls -d */)
do

  cd $folder

  if [ -d ".git" ]
  then
    git checkout develop
    git pull
    git checkout master
    git pull
    git merge develop
    git add --all :/
    git commit -m "EOD"
    git push

    # Always go back to develop
    git checkout develop
  fi

  cd ..
done


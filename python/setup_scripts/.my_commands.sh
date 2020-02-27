#!/bin/bash

function create(){

  #navigate to ~ (home directory)
  cd
  #navigate to setup_scripts directory
  cd /Users/nikourriola/Desktop/projects/setup_scripts/
  #make a new repository with specified name
  python3 make.py $1 #$1 means - first argument after calling shell script
  #adding template files
  #copy the modified (python) ignore file to .gitignore
  cp ignore_temp.txt /Users/nikourriola/Desktop/projects/$1/.gitignore
  #create a template main file
  cp main_temp.py /Users/nikourriola/Desktop/projects/$1/main.py
  #create a template test class
  cp test_temp.py /Users/nikourriola/Desktop/projects/$1/tests.py
  #move into the new project directory
  cd /Users/nikourriola/Desktop/projects/$1
  git init
  git remote add origin git@github.com:nurriol2/$1.git
  touch README.md
  git add .
  git commit -m "Initial commit"
  git push -u origin master
  #open current project in atom
  atom .
}

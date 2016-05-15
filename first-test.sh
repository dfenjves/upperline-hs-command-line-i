#!/bin/bash
echo -e "Hi, please type the url: \c "
read  url
echo "The url you entered is: $url"
git clone $url
REMOVEDFRONT="${url:35}"
file_name="${REMOVEDFRONT::${#REMOVEDFRONT}-4}"
echo "time to change"
sleep 3
newname="upperline-$file_name" 
mv "$file_name" $newname
cd $newname
rm -rf ".git"
git init
hub create "$newname"
git add .
git commit -m "first commit"
git push origin master

# function convert {
#   url = $1
#   git clone $url
#   REMOVEDFRONT="${url:35}"
#   file_name="${REMOVEDFRONT::${#REMOVEDFRONT}-4}"
#   echo "time to change"
#   sleep 3
#   newname="upperline-$file_name" 
#   mv "$file_name" $newname
#   cd $newname
#   rm -rf ".git"
#   git init
#   hub create "$newname"
#   git add .
#   git commit -m "first commit"
#   git push origin master
#   cd ..
# }

# convert git@github.com:learn-co-curriculum/hs-learn-submit.git
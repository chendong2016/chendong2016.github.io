#!/bin/bash
echo ===================================
function echor ()
{
     echo -e "\033[31m"$1"\033[0m"
}
function echog ()
{
     echo -e "\033[32m$1\033[0m"
}
function echob ()
{
     echo -e "\033[34m$1\033[0m"
}


git checkout .
echor "第1个参数为抬头，可以中文"
echor "第2个参数为对应拼音名或是英文名，"

[ $# -eq 2 ] || exit

echo "修改_data/navigation.yml"
echo >> _data/navigation.yml
echo "- title: $0" >> _data/navigation.yml
echo "  url: /$2/" >> _data/navigation.yml

echog =================
cat _data/navigation.yml
echog =================
echo "创建$2 to $2/index.md"
[ -d $2 ] && rm -rf $2
mkdir $2
mkdir _posts/$2

cat index.md.template | sed -e "s/myexcerpt/$1/" -e "s/name/$2/">$2/index.md

echog =================
cat $2/index.md
echog =================


[ -d images/$2 ] && rm -rf images/$2
mkdir ./images/$2
echor ok

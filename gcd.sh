#!/bin/bash

if [ $# -ne 2 ]; then
  echo '引数は2つ入力してください'
  exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
  echo "第一引数に自然数を入力してください"
  exit 1
fi

if ! [[ "$2" =~ ^[0-9]+$ ]]; then
  echo "第二引数に自然数を入力してください"
  exit 1
fi

if [ "$1" -eq 0 ]; then
  echo "第一引数に0を入力することはできません"
  exit 1
fi

if [ "$2" -eq 0 ]; then
  echo "第二引数に0を入力することはできません"
  exit 1
fi

while [ 0 -lt $1 ]
do
  t=`expr $2 % $1`
  set $t $1
done

echo $2

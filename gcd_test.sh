#!/bin/bash

function test() {
  if [ $? -eq "$1" ]; then
    return "$2"
  else
    return 1
  fi
}

total=0

result=$(/bin/bash gcd.sh 2 4)
if [ "$result" = 2 ]; then
  echo "OK"
else
  echo "NG"
  total=1
fi

result=$(/bin/bash gcd.sh 3)
if [ "$result" = "引数は2つ入力してください" ]; then
  echo "OK"
else
  echo "NG"
  total=1
fi

result=$(/bin/bash gcd.sh 3 3 3)
if [ "$result" = "引数は2つ入力してください" ]; then
  echo "OK"
else
  echo "NG"
  total=1
fi

result=$(/bin/bash gcd.sh a 2)
if [ "$result" = "第一引数に自然数を入力してください" ]; then
  echo "OK"
else
  echo "NG"
  total=1
fi

result=$(/bin/bash gcd.sh 2 a)
if [ "$result" = "第二引数に自然数を入力してください" ]; then
  echo "OK"
else
  echo "NG"
  total=1
fi

result=$(/bin/bash gcd.sh 0 1)
if [ "$result" = "第一引数に0を入力することはできません" ]; then
  echo "OK"
else
  echo "NG"
  total=1
fi

result=$(/bin/bash gcd.sh 1 0)
if [ "$result" = "第二引数に0を入力することはできません" ]; then
  echo "OK"
else
  echo "NG"
  total=1
fi

exit $total

#! /bin/bash

echo -e パスワードマネージャーへようこそ！

while :
do 
	read -p "サービス名を入力してください：" serviceName
	if [ "$serviceName" != "" ]; then
		break
	else echo "入力がありません"
	fi
done

while :
do
	read -p "ユーザー名を入力してください：" userName
	if [ "$userName" != "" ]; then
		break
	else echo "入力がありません"
	fi
done

while :
do
	read -p "パスワードを入力してください：" pass
	if [ "$pass" != "" ]; then
		break
	else echo "入力がありません"
	fi
done

echo "$serviceName" : "$userName" : "$pass" >> passwd.txt


#! /bin/bash

addPassword () {
while :
do 
	read -p "サービス名を入力してください：" serviceName
	if [ "$serviceName" != "" ]; then
		break
	else echo "入力データがありません"
	fi
done

while :
do
	read -p "ユーザー名を入力してください：" userName
	if [ "$userName" != "" ]; then
		break
	else echo "入力データがありません"
	fi
done

while :
do
	read -p "パスワードを入力してください：" pass
	if [ "$pass" != "" ]; then
		break
	else echo "入力データがありません。"
	fi
done

echo "$serviceName" : "$userName" : "$pass" >> passwd.txt
echo "パスワードの追加は成功しました。"
}

getPassword () {
while read line
do
	serviceName=`echo $line | cut -d ':' -f 1`
	userName=`echo $line | cut -d ':' -f 2`
	pass=`echo $line | cut -d ':' -f 3`
	if [ $1 = $serviceName ]; then
		echo "サービス名：$serviceName"
		echo "ユーザー名：$userName"
		echo "パスワード：$pass"
		return
	fi
	
done < passwd.txt
echo "そのサービスは登録されていません。"

}

echo -e パスワードマネージャーへようこそ！

while :
do
echo "次の選択肢から入力してください(Add Password/Get Password/Exit)："
read select
case "$select" in
	"Add Password" ) addPassword ;;
	"Get Password" ) read -p "サービス名を入力してください：" input
	getPassword $input;;
	"Exit" ) echo "Thank you!" 
		break ;;
	* ) echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。";;
esac
done




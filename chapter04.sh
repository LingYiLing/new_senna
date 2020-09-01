#echo ________________________________
#echo "free using expansion"
#free -m
#free -m | grep Mem:
#echo expansion using
#free -m | grep Mem: | awk '{print $4}'
#echo another example
#FreeMem=`free -m | grep Mem: | awk '{print $4}'`
#echo $FreeMem
#echo ________________________________


#!/bin/bash
#DIR="/media/cdrom"
#if [ ! -e $DIR ]
#then
#	mkdir -p $DIR
#fi


#!/bin/bash
#ping -c 3 -i 0.2 -W 3 $1 &> /dev/null
#if [ $? -eq 0 ]
#then
#	echo "Host $1 is On-line."
#else
#	echo "Host $1 is Off-line."
#fi


#!/bin/bash
#read -p "Enter your score (0-100): " GRADE
#if [ $GRADE -ge 85 ] && [ $GRADE -le 100 ] ; then
#	echo "$GRADE is Excellent"
#elif [ $GRADE -ge 70 ] && [ $GRADE -le 84 ] ; then
#	echo "$GRADE is Pass"
#else
#	echo "$GRADE is Fail"
#fi


#!/bin/bash
#read -p "Enter The Users Password : " PASSWD
#for UNAME in `cat users.txt`
#do
#	id $UNAME &> /dev/null
#	if [$? -eq 0 ]
#	then
#		echo "Already exists"
#	else
#		useradd $UNAME &> /dev/null
#		echo "$PASSWD" | passwd --stdin $UNAME &> /dev/null
#		if [ $? -eq 0 ]
#		then
#			echo "$UNAME , Create success"
#		else
#			echo "$UNAME , Create failure"
#		fi
#	fi
#done


#!/bin/bash
#ip地址检测
#HLIST=$(cat ./ipadds.txt)
#for IP in $HLIST
#do
#	ping -c 3 -i 0.2 -W 3 $IP &> /dev/null
#	if [ $? -eq 0 ]
#	then
#		echo "Host $IP is On-line."
#	else
#		echo "Host $IP is Off-line."
#	fi
#done


#!/bin/bash
PRICE=$(expr $RANDOM % 1000)
TIMES=0
echo "商品胡实际价格为0~999之间，猜猜看是多少？"
while true
do
	read -p "请输入你猜测的价格数据：" INT
	let TIMES++
	if [ $INT -eq $PRICE ] ; then
		echo "恭喜你答对了，实际价格是 $PRICE"
		echo "你总共猜测了 $TIMES 次"
		exit 0;
	elif [ $INT -gt $PRICE ] ; then
		echo "太高了！"
	else
		echo "太低了!"
	fi
done

#流程控制语句
#和Java、PHP等语言不一样，sh的流程控制不可为空

echo "===================== if else ====================="

a=10
b=20
if [ $a == $b ]
then
echo "a 等于 b"
elif [ $a -gt $b ]
then
echo "a 大于 b"
elif [ $a -lt $b ]
then
echo "a 小于 b"
else
echo "没有符合的条件"
fi

echo "===================== for ====================="
for loop in 1 2 3 4 5
do
echo "The value is: $loop"
done

for str in 'This is a string'
do
echo $str
done

echo "===================== while ====================="

int=1
while(( $int<=5 ))
do
echo $int
let "int++"
done

echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的电影名: '
while read FILM
do
echo "是的！$FILM 是一部好电影"
done

echo "===================== case ====================="
#取值后面必须为单词in，每一模式必须以右括号结束。取值可以为变量或常数。匹配发现取值符合某一模式后，其间所有命令开始执行直至 ;; （相当于break）
#取值将检测匹配的每一个模式。一旦模式匹配，则执行完匹配模式相应命令后不再继续其他模式。如果无一匹配模式，使用星号 * （相当于default）捕获该值，再执行后面的命令
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
1)  echo '你选择了 1'
;;
2)  echo '你选择了 2'
;;
3)  echo '你选择了 3'
;;
4)  echo '你选择了 4'
;;
*)  echo '你没有输入 1 到 4 之间的数字'
;;
esac

echo "===================== break ====================="
#break命令允许跳出所有循环（终止执行后面的所有循环）。
while :
do
echo -n "输入 1 到 5 之间的数字:"
read aNum
case $aNum in
1|2|3|4|5) echo "你输入的数字为 $aNum!"
;;
*) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
break
;;
esac
done


echo "===================== continue ====================="
#continue命令与break命令类似，只有一点差别，它不会跳出所有循环，仅仅跳出当前循环
while :
do
echo -n "输入 1 到 5 之间的数字: "
read aNum

#case的语法和C family语言差别很大，它需要一个esac（就是case反过来）作为结束标记，每个case分支用右圆括号，用两个分号表示break。
case $aNum in
1|2|3|4|5) echo "你输入的数字为 $aNum!"
;;
*) echo "你输入的数字不是 1 到 5 之间的!"
continue
echo "游戏结束"
;;
esac
done

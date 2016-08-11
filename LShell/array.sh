#Shell 数组用括号来表示，元素用"空格"符号分割开
my_array=(A B "C" D);
echo "第一个元素为：${my_array[0]}";
echo "数组的元素为：${my_array[*]}";
echo "数组的元素为：${my_array[@]}";
echo "数组元素个数为：${#my_array[*]}";

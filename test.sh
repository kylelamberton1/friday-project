eclare -a num1s=()
declare -a num2s=()

i=1
while [ $i -lt 11 ]; do
  num1s+="$(( $RANDOM % 99 + 1 )) "
  num2s+="$(( $RANDOM % 99 + 1 )) "
  ((i++))
done

for num1 in ${num1s[@]}; do
  for num2 in ${num2s[@]}; do
    if [ $(./calc.sh '+' $num1 $num2) -eq $(($num1 + $num2)) ] && [ $(./calc.sh '-' $num1 $num2) -eq $(($num1 - $num2)) ] && [ $(./calc.sh '*' $num1 $num2) -eq $(($num1 * $num2)) ] && [ $(./calc.sh '/' $num1 $num2) -eq $(($num1 / $num2)) ]; then
      echo "$num1, $num2: test passed"
    else
      echo "$num1, $num2: test failed"
      exit 1
    fi
  done
done

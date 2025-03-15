reverse_number() {
    echo $1 | grep -o . | tac | tr -d '\n'
}
read -p "Enter a number: " num
result=$(reverse_number $num)
echo "Reverse of $num is $result"

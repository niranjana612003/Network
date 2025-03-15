find_smallest_digit() {
    local num=$1
    local smallest=9
    local digit

    while [ $num -gt 0 ]; do
        digit=$((num % 10))  
        if [ $digit -lt $smallest ]; then
            smallest=$digit  
        fi
        num=$((num / 10))  
    done

    echo "Smallest digit: $smallest"
}


read -p "Enter a number: " number

if [[ $number =~ ^[0-9]+$ ]]; then
    find_smallest_digit $number
else
    echo "Invalid input! Please enter a positive integer."
fi


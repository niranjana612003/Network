
calculate_grade() {
    local marks=$1

    if [ $marks -ge 90 ]; then
        echo "Grade: A+"
    elif [ $marks -ge 80 ]; then
        echo "Grade: A"
    elif [ $marks -ge 70 ]; then
        echo "Grade: B"
    elif [ $marks -ge 60 ]; then
        echo "Grade: C"
    elif [ $marks -ge 50 ]; then
        echo "Grade: D"
    else
        echo "Grade: F (Fail)"
    fi
}


read -p "Enter Student Name: " name


read -p "Enter Marks (out of 100): " marks


if [[ $marks =~ ^[0-9]+$ ]] && [ $marks -ge 0 ] && [ $marks -le 100 ]; then
    echo "Student Name: $name"
    calculate_grade $marks
else
    echo "Invalid input! Please enter marks between 0 and 100."
fi


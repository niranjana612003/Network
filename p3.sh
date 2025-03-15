echo "Enter the radius of the circle: "
read radius

pi=3.14 
area=$(echo "$pi * $radius * $radius" | bc)
circumference=$(echo "2 * $pi * $radius" | bc)

echo "Area of the circle: $area"
echo "Circumference of the circle: $circumference"


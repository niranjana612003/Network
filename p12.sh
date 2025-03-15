echo "enter a line of text :"
read text

vowel_count=0

for (( i=0; i<${#text}; i++ ))
do
  char=${text:i:1}

  if [[ "$char" =~ [aeiouAEIOU] ]]; then
    vowel_count=$((vowel_count + 1))
  fi
done

echo "The number of vowels in the given text is: $vowel_count"

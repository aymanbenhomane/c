function check() {
  local leguess="$1"
  if [ $leguess -lt $answer ]; then
      read -p "your guess is lower, enter a number again: " guess
   fi
   if [ $leguess -gt $answer ]; then
      read -p "guess is greater, enter a number again: " guess
   fi
}




answer=$(ls | wc -l)
read -p "Enter the number: " guess
while [ $guess != $answer ];
do
   check $guess
done
echo "Correct guess"
echo "end of program"

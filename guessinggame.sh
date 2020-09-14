count=$(ls -p | grep -v / | wc -l)
guess="-1"
while [[ $guess -ne $count ]]
do
  echo "Enter a guess for the amount of files"
  read guess
done
echo "You got it!"

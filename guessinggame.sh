function getFileCount {
  c=$(ls -p | grep -v / | wc -l)
  echo $c
}

fileCount=$(getFileCount)
guess="-1"
loopCount=0

echo "How many files do you think are in the current directory?"
while [[ $guess -ne $fileCount ]]
do
  let loopCount=$loopCount+1
  echo -n "Guess $loopCount: "
  read guess
  if [[ $guess -gt $fileCount ]]; then
    echo "The guess was too high, try again!"
  elif [[ $guess -lt $fileCount ]]; then
    echo "The guess was too low, try again!"
  fi
done
echo "You got it!"
echo "Took $loopCount tries"

# Factorial
num <- as.numeric(readline("Enter the number: "))
fact <- 1

for (i in 1:num) {
  fact <- fact * i
}

print(paste("The factorial of", num, "is:", fact))

# Palindrome
temp <- num
rev <- 0

while (temp > 0) {
  rev <- rev * 10 + temp %% 10
  temp <- as.integer(temp / 10)
}

if (rev == num) {
  print(paste("The number", num, "is a Palindrome."))
} else {
  print(paste("The number", num, "is not a Palindrome."))
}

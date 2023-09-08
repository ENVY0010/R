# E = the sum of 2 dice rolls is = 6

n <- 10^6
die1 <- sample(1:6, n, replace = TRUE)
die2 <- sample(1:6, n, replace = TRUE)
diceSum <- die1 + die2
cbind(die1, die2, diceSum)

E <- diceSum == 6
sum(E)
sum(E) / n
mean(E)
5/36


# Replicate function
isSum6 <- replicate(n = 1000, expr = {
  die1 <- sample(1:6, 1)
  die2 <- sample(1:6, 1)
  diceSum <- die1 + die2
  diceSum == 6
})
isSum6
mean(isSum6)


# prob largest die roll is 4 (3 dice)
isMax4 <- replicate(n = 10^5, expr = {
  die1 <- sample(1:6, 1)
  die2 <- sample(1:6, 1)
  die3 <- sample(1:6, 1)
  max(die1, die2, die3) == 4  
})
mean(isMax4)


# Estimate prob third HEADS occurs on 10th toss of coin
coinFlips <- sample(c("H", "T"), 10, TRUE)
# E1 = exactly 2 heads in first 9 flips
E1 <- sum(coinFlips[1:9] == "H") == 2
# E2 = 10th flip is heads
E2 <- coinFlips[10] == "H"
E1 & E2

E <- replicate(n = 10^5, expr = {
  coinFlips <- sample(c("H", "T"), 10, TRUE)
  # E1 = exactly 2 heads in first 9 flips
  E1 <- sum(coinFlips[1:9] == "H") == 2
  # E2 = 10th flip is heads
  E2 <- coinFlips[10] == "H"
  E1 & E2
})
mean(E)


rbinom(n = 1, size = 9, prob = 1/2)
dbinom(x = 2, size = 9, prob = 1/2)
dbinom(x = 2, size = 9, prob = 1/2) * 1/2






# Choose function
choose(10, 3)
2^10
120/1024

flips <- sample(0:1, 10, TRUE)
flips
sum(flips)
sum(flips) == 3

E <- replicate(10^5, expr = {
  flips <- sample(0:1, 10, TRUE)
  sum(flips) == 3  
})
mean(E)

# Prob 1st die is twice 2nd die


E <- replicate(n = 10^6, expr = {
  rolls <- sample(1:6, 2, TRUE)
  (rolls[1] * 2) == rolls[2]
})
mean(E)
3/36


pickMM <- function(n) {
  sample(
    x = c("Y", "R", "O", "Br", "G", "Bl"),
    size = n,
    replace = TRUE,
    prob = c(.14, .13, .2, .12, .2, .21)
  )
}

pickMM
table(pickMM(10^5)) / 10^5















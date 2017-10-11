# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  length.diff <- length(v1) - length(v2)
  return(paste("The difference in lengths is", length.diff, collapse = " "))
}

# Pass two vectors of different length to your `CompareLength` function
print(CompareLength(c(1, 2, 3, 4, 5), c(1, 2)))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  length.diff <- length(v1) - length(v2)
  if(length.diff > 0) {
    return(paste("Your first vector is longer by", length.diff, collapse = " "))
  } else if(length.diff < 0) {
    return(paste("Your second vector is longer by", -length.diff, collapse = " "))
  } else {
    return("Both vectors are the same length")
  }
}

# Pass two vectors to your `DescribeDifference` function
print(DescribeDifference(c('a', 'b'), c('a', 'b', 'c', 'd', 'e')))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(v1, v2) {
  length.diff <- length(v1) - length(v2)
  if(length.diff > 0) {
    return(paste("v1 is longer by", length.diff, collapse = " "))
  } else if(length.diff < 0) {
    return(paste("v2 is longer by", -length.diff, collapse = " "))
  } else {
    return("Both vectors are the same length")
  }
}
print(DescribeDifference(c('a', 'b'), c('a', 'b', 'c', 'd', 'e')))

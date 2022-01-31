print("This file was created within RStudio")

print("And now it lives on GitHub")

c() function creates objects
as.character turns objects class into another one

m <- matrix(1:12, nrow = 3, ncol = 4)
dim(m) will give two numbers 3 and 4
attributes(m) will give dim
Or you can at first create m <- 1:10 and only then add dim(m) <- c(2,5)

cbind and rbind add two arrays together

d <- factor(c(1, 3, 5, 4, 5, 3, 1), levels(1, 3, 4, 5))
d; table(d); unclass(d);

is.na(); is.nan() tests for na and NaN

Data frames are created by read.table() or read.csv()
row.names()
data.matrix() converts them into matrices
x <- data.frame(glot = 5:10, bruh = c(T, T, F, T, F, F))
nrow ncol tell the number of rows.columns

names(w) <- c("lol", "kek")
names(w)

m <- matrix(1:6, nrow = 2, ncol = 3)
dimnames(m) <- list(c("a", "b"), c("c", "d", "e"))

READING DATA
read.table, read.csv for reading tabular data
readLines for reading lines of a text files
source, dget for reading in R code
load, unserialize for reading in binary form

read.table arguments:
  file - the name of a file
  header
  sep - the columns are separated
  colClassses - character vector indicating the class of each column in the dataset
  nrows - number of rows
  comment.char - the comment character
  skip, how many lines to skip in the beginning
  stringsAsFactors - should characted variables be coded as factors?
    
read.csv is like read.table but the separator is a comma

dump and dput - preserve the metadata
dput(y, file = "y.R")
new.y <- dget ("y.R")
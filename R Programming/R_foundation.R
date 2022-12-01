# comment

#### 1. variables
# assign variable
my_name <- "Mink"
my_age <- 29
university <- "Kasetsart University"

# remove variable
rm(university)

#### 2. data types
# 2.1 numeric
# 2.2 character (string, text)
# 2.3 logical (boolean)
# 2.4 factor, categorical data
# 2.5 date

(x <- 1:100) # create var + print in same time by using ()

(x <- 25:49)

y <- seq(1, 100, by=5) # (start, stop, by)

class(x) # function class() use for check data type
class(y)

class("Hello World")

class(TRUE)

# create vector
friends <- c("mink", "mark", "john", "mary", "anna")
class(friends)

movie_lovers <- c(T, F, T, T, F)
class(movie_lovers)

ages <- c(29, 25, 27, 22, 28)
class(ages)

# create and learn about factor
animals <- c("cat", "dog", "dog", "cat", "cat")
animals <- factor(animals)
class(animals)

table(animals) # create frequency table

table(animals) / length(animals) # change value in table to be % (vectorization) 

# date use ISO standard YYYY-MM-DD
my_date <- "2022-11-19"  # data type is 'character' so have to change to be 'date'
my_date <- as.Date(my_date)
class(my_date)

#### 3. Data Structures
# 3.1 vector >> use to represent 1 dimension
# 3.2 matrix
# 3.3 list >> can keep several data types  
# 3.4 dataframe (=pandas in python)

# vector
x <- 1:10 # change from vector to be matrix

#matrix
(m1 <- matrix(x, ncol=5, byrow=TRUE))
class(m1)

# list
customer <- list(
  fname = "David",
  lname = "Beckham",
  age = 42,
  movies = c("Avenger", 
             "Spiderman", 
             "Justice League"),
  m = matrix(1:10, ncol=2)
)

customer$fname  # use $ to subset list 
customer$age
customer$movies[1] # index in R starts with 1 (One)
customer$movies[3] # subset by position
customer$movies[1:2]
customer$m[2, 1] # [row, col]
customer$m[4, 2]


ages[ages > 28] # subset by logical
friends[ages > 27]


customer_01 <- list(
  fname = "David",
  lname = "Beckham",
  age = 42,
  movies = c("Avenger", 
             "Spiderman", 
             "Justice League"),
  m = matrix(1:10, ncol=2)
)

customer_02 <- list(
  fname = "Mark",
  lname = "Lee",
  age = 23,
  movies = c("Harry Potter",
             "Aquaman",
             "Flash"),
  address = c("Canada", "Seoul")
)

# nested list (list in list)
customer_db <- list(
  id01 = customer_01,
  id02 = customer_02
)

customer_db$id02$fname
customer_db$id02$movies[2]

# data frame
friends <- c("mink", "mark", "john", "mary", "anna")
ages <- c(29, 25, 27, 22, 28)
movie_lovers <- c(T, F, T, T, F)
animals <- c("cat", "dog", "dog", "cat", "cat")

df <- data.frame(id = 1:5,
                 friends,
                 ages,
                 movie_lovers,
                 animals)

View(df)

# subset data frame (by col)
df$friends
df$movie_lovers

# subset by row
df[2, ] # (row2, all columns)
df[2, 1:3] # (row2, col1-3)
df[c(1,3,5), 4:5]

df$ages < 30
sum( df$ages < 27)  # count if ages < 27
sum( df$ages != 29)

df[df$ages < 26]
df[df$movie_lovers, ] # default will subset only TRUE
df[ ! df$movie_lovers, ] # friends who dont like movie use !

# write csv file
write.csv(df, "data/friends.csv",
          row.names = FALSE)   # folder/file_name

# import csv file
getwd()
setwd("data") # move from project to folder data
list.files() # list all files in folder wd

df <- read.csv("data/friends.csv")
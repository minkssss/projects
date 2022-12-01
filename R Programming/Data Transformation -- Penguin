## read csv file from internet
penguins <- read.csv("https://raw.githubusercontent.com/mwaskom/seaborn-data/master/penguins.csv")

## basic data manipulation
mean( penguins$bill_length_mm ) # result will show as NA so have to put more command
mean( penguins$bill_length_mm, na.rm = TRUE) # can show mean
sum( penguins$bill_length_mm, na.rm = TRUE)
median( penguins$bill_depth_mm, na.rm = TRUE)

summary(penguins)

## preview dataframe
head(penguins, 3)
tail(penguins, 3)

dim(penguins) # check row+col
str(penguins) # check structure

## subset first 10 rows
mini_penguins <- penguins[1:10, ]

## create new column
mini_penguins$newcolumn <- mini_penguins$bill_length_mm * 2
View(mini_penguins)

## drop column has 2 ways
#1. assign null
mini_penguins$newcolumn <- NULL
View(mini_penguins)

#2. subset all except that col
mini_penguins <- mini_penguins[ , 1:6] 
View(mini_penguins)

## select columns + filter rows
result <- subset(mini_penguins, 
                 bill_length_mm > 40,
                 c("species", "island", "bill_length_mm"))

## change col names
names(result)  # use names() to view col name
names(result) <- c("SPEC", "LAND", "BILL_LENGTH")

## count missing values by row
complete.cases(penguins)

nrow(penguins) - sum(complete.cases(penguins))

## filter only row that contain NA records
penguins[ !complete.cases(penguins), ] # ! change from TRUE to FALSE / FALSE to TRUE

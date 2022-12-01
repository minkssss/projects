## read csv file from internet
penguins <- read.csv("https://raw.githubusercontent.com/mwaskom/seaborn-data/master/penguins.csv")

## basic data manipulation -- quickly recheck NA values
mean( penguins$bill_length_mm ) # If result show as NA, meaning that this data has NA values. 
# put more command `na.rm = TRUE` for calculating
mean( penguins$bill_length_mm, na.rm = TRUE) 
sum( penguins$bill_length_mm, na.rm = TRUE)
median( penguins$bill_depth_mm, na.rm = TRUE)

summary(penguins)  # This will represent all basic stats

## preview dataframe
head(penguins, 3)
tail(penguins, 3)

dim(penguins) # check row+col
str(penguins) # check structure

## subset first 10 rows
mini_penguins <- penguins[1:10, ]

## create new column (will append at last column)
mini_penguins$newcolumn <- mini_penguins$bill_length_mm * 2
View(mini_penguins)

## drop column has 2 ways
#1. assign null to that column
mini_penguins$newcolumn <- NULL
#2. subset all columns except that column
mini_penguins <- mini_penguins[ , 1:6] 
View(mini_penguins)

## select columns + filter rows
result <- subset(mini_penguins, 
                 bill_length_mm > 40,
                 c("species", "island", "bill_length_mm"))

## change column names
names(result)  # use command `names()` to view column names
names(result) <- c("SPEC", "LAND", "BILL_LENGTH")

## count NA values by row
complete.cases(penguins) # this will return TRUE or FALSE (TRUE == NA value)

nrow(penguins) - sum(complete.cases(penguins)) 

## filter only row that contain NA values
penguins[ !complete.cases(penguins), ] # ! change from TRUE to FALSE / FALSE to TRUE

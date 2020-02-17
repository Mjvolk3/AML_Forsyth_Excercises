##Import Data
#1,3,5,11,12,13 are continuous, 15 is label
cont_feat = rep("NULL", 15)
cont_feat[1] = "integer"
cont_feat[3] = "integer"
cont_feat[5] = "integer"
cont_feat[11] = "integer"
cont_feat[12] = "integer"
cont_feat[13] = "integer"
cont_feat[15] = "character"

col_names = c("age", "fnlwgt", "education_num", "capital_gain", "capital_loss", "hours_per_week")

#data <- read.table("CH2/adult.data", sep = ",", colClasses = cont_feat, header = TRUE, nrows = 10)
adult_data <- read.table("CH2/adult.data", sep = ",", colClasses = cont_feat, header = TRUE, nrows = 50000)
adult_test <- read.table("CH2/adult.test", sep = ",", colClasses = cont_feat, header = TRUE, nrows = 50000, skip = 1)
print(dim(adult_data)[1]+dim(adult_test)[1]) #Report there are 48842 instances, but may of counted header row... cannot find other sol

#match column names to concatenate
names(adult_data) <- c("age", "fnlwgt", "education_num", "capital_gain", "capital_loss", "hours_per_week", "label")
names(adult_test) <- names(adult_data)

#combine to form entire data set
adult_whole = rbind(adult_data,adult_test)

#confirm no NAs for further column removal
sum(is.na(adult_whole))



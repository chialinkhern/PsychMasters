institutionalchars = read.csv("data/institutionalcharacteristics.csv")
allprogs = read.csv("data/all_programs.csv")

source("functions/getpsychmasters.R")
source("functions/getInstitutionalChars.R")

# dropping redundant columns
psychmastersprogs = subset(psychmastersprogs, select=-c(year, HD2019.Carnegie.Classification.2018..Basic))

write.csv(psychmastersprogs, "output/psychmastersprogs.csv")

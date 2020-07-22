institutionalchars = subset(institutionalchars, select=c("unitid", "HD2019.State.abbreviation", "HD2019.Carnegie.Classification.2018..Basic"))

# get state & carnegie classification
psychmastersprogs = merge(psychmastersprogs, institutionalchars, by="unitid")
psychmastersprogs$R1 = ifelse(psychmastersprogs$HD2019.Carnegie.Classification.2018..Basic=="Doctoral Universities: Very High Research Activity", "yes", "no")

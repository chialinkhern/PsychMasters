psychmastersprogs = allprogs[allprogs$C2019_A.Award.Level.code=="Master's degree" & grepl("Psychology", allprogs$CipTitle, fixed=FALSE),]
colnames(psychmastersprogs) = c("unitid","institutionName","year","CipTitle","DegreeType","numGraduated2019")

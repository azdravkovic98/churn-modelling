#####################################################
# skripta u kojoj se u dataset dodaju NA vrednosti
#####################################################

library(missForest) # fja prodNA

# izabraćemo na slučajan način 6 kolona koje će sadržati
# ~10% NA vrednosti
data <- read.csv("data.csv")
data.mis <- prodNA(data[, c(4, 9, 10, 11, 12, 13)], noNA = 0.1)
data[, c(4, 9, 10, 11, 12, 13)] <- data.mis
for(i in 1:length(data)){
  print(mean(is.na(data[, i])))
}

write.csv(data, "C:/Users/azdra/Documents/Faks/EFM/churn-modelling//data_with_NA.csv", row.names = FALSE)

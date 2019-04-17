data = read.csv("complete_processed_scaled.csv")
data = data[,c(-1)]
glmfit = glm( tr_status ~ . , data = data, family = "binomial")
summary(glmfit)

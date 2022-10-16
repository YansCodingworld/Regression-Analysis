# Section 3
help(glm)
help(family)
library(faraway)
help("teengamb")
data("teengamb")
teengamb$sex <- as.factor(teengamb$sex)
model1 <- lm(gamble ~income, data = teengamb)
model2 <- glm(gamble ~ income, data = teengamb, family = "gaussian")
summary(model1)
summary(model2)

# logistic regression
mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")
mydata <- [,-1:3]
head(mydata,5)
mylogit <- glm(admit ~gpa,
               data = mydata, family = "binomial")
# link function for binomial family is logit function
summary(mylogit)
my_gpa <- seq(0, 4, by = 0.01)
prob_admits <- predict(mylogit, list(gpa = my_gpa), type = "response")
plot(my_gpa, prob_admits, type = 1)
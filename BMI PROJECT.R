data=read.csv(file.choose(),header=TRUE)
data
names(data)
head(data)
summary(data)

#CONVERTING DATA PROPERLY-as.factor = convert into category
data$Gender=as.factor(data$Gender)
head(data)

#check distribution
table(data$Index)

#convert index into binary
data$Index=as.numeric(as.character(data$Index))
data$Risk=ifelse(data$Index >= 4,1,0)
data$Risk=as.factor(data$Risk)
table(data$Risk)

########EDA
#GEBDER VS RISK
table(data$Gender,data$Risk)

#HEIGHT DISTRIBUTION
library(ggplot2)

#HEIGHT DISTRIUTION
ggplot(data,aes(x=Height))+geom_histogram(fill="blue",bins=10)

#WEIGHT VS RISK
ggplot(data,aes(x=Risk,y=Weight, fill = Risk))+geom_boxplot()

#height vs weight
ggplot(data,aes(x=Height,y=Weight,colour = Risk))+geom_point()

######STATISTICAL IMPORTANT TEST

###T- TEST
#Ho : μlow =μhigh (Mean weight is same for low risk and high risk)
#H1 : μlow is not = μhigh (Mean wight is different)
t.test(Weight~Risk,data=data)
#Interpret
#pvalue-2.2e-16 <0.05 ,fail to accept Ho,Mean is different
#Insight from Means
#Low risk mean = 73.57
#High risk mean = 123.01
#Individuals in the high-risk group have significantly higher mean weight compared to the low-risk group, indicating that weight is strongly associated with risk.


###CHI SQUARE
#Ho:Gender and Risk are independent
#H1:Gender and Risk are associated
table1 = table(data$Gender,data$Risk)
chisq.test(table1)
#p-value-0.6006 >0.05 , fail to reject Ho.
#There is no statistically significant association between gender and risk.


###Logistic REGRESSION
model=glm(Risk~Height+Weight+Gender,data=data,family="binomial")
model
#Interpretation- 
#Height= (−0.432) Negative coefficient ,As height increases, risk decreases
#Weight (+0.415) Positive coefficient ,As weight increases, risk increases
#Gender (−0.093) Very small effect Gender has very weak impact on risk
#Logistic regression analysis revealed that weight is positively associated with risk, while height shows a negative association. Gender does not appear to have a significant effect. The model demonstrates a strong fit, as indicated by a substantial reduction in deviance.

#convert into odd ratio
exp(coef(model))

######PREDICTION
prob=predict(model,type="response")
prob

pred=ifelse(prob>0.5,1,0)
pred
table(Predicted= pred, Actual=data$Risk)

#Author: Ronald Britt Jr
#Date: September 9th, 2025 (09/09/2025)
#Purpose: Create a regression model between mpg ~ gear
#Use this regression model to do predictions on test data
#Print the output
#Save ouput and R program in a file Assignment2.R
#Upload to Github Repository under the class repository

#Get dataset
cars <- mtcars

#Splitting the training data and test data for the regression
TrainingData <- cars[1:16,]
TestData <- cars[17:32,]

#Building the regression model
#This shows the correlation between mpg and gear
RegressionModel <- lm(mpg ~ gear,  data=TrainingData)

#Predicting the regression function on the test data
Prediction <- predict(RegressionModel, TestData)

#Results of the prediction
#Data frame begins building the frame to print the prediction results
#Cbind is used to bind the data into a column
PredictionResults <- data.frame(cbind(values=TrainingData$mpg, Predictables=Prediction))

#The prediction results
#> PredictionResults
#                  values Predictables
#Chrysler Imperial   21.0     15.80000
#Fiat 128            21.0     21.28571
#Honda Civic         22.8     21.28571
#Toyota Corolla      21.4     21.28571
#Toyota Corona       18.7     15.80000
#Dodge Challenger    18.1     15.80000
#AMC Javelin         14.3     15.80000
#Camaro Z28          24.4     15.80000
#Pontiac Firebird    22.8     15.80000
#Fiat X1-9           19.2     21.28571
#Porsche 914-2       17.8     26.77143
#Lotus Europa        16.4     26.77143
#Ford Pantera L      17.3     26.77143
#Ferrari Dino        15.2     26.77143
#Maserati Bora       10.4     26.77143
#Volvo 142E          10.4     21.28571
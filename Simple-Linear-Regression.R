#To comment in R, use the hastag
#Author: Ronald Britt Jr
#Date: August 28th. 2025 (08/28/25)
#Purpose: Test simple linear regression

#Get some dummy dataset
cars <- mtcars

#Check dimensions of dataset
dim(cars)


#head(cars) shows the first few lines of the data set
#tails(cars) shows the bottom few lines of the data set
head(cars)

#                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
#Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
#Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
#Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
#Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
#Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
#Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

tail(cars)

#                mpg cyl  disp  hp drat    wt qsec vs am gear carb
#Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.7  0  1    5    2
#Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.9  1  1    5    2
#Ford Pantera L 15.8   8 351.0 264 4.22 3.170 14.5  0  1    5    4
#Ferrari Dino   19.7   6 145.0 175 3.62 2.770 15.5  0  1    5    6
#Maserati Bora  15.0   8 301.0 335 3.54 3.570 14.6  0  1    5    8
#Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.6  1  1    4    2

#dim(cars) shows how many rows and then colums there are in the dataset
dim(cars)

#Scatter plot on training data
#scatter.smooth is the function to create the scatter plot and it takes 3 different argument
#What the x axis will be, what the y axis will be, and main is the name of the plot.
scatter.smooth(x=cars$mpg, y=cars$disp, main="SpeedVDistance")
#Second graph
scatter.smooth(x=cars$mpg, y=cars$gear, main="SpeedVDistance")
#Switching the axis
scatter.smooth(x=cars$disp, y=cars$mpg, main="SpeedVDistance")

#Calculate correlation value between mgp and disp
cor(cars$mpg, cars$disp)

#Split training and testing data for regression
#Comma at the end to select rows, but if the comma is at the front, it will select columns
training_data <- cars[1:16,]
test_data <- cars[17:32,]
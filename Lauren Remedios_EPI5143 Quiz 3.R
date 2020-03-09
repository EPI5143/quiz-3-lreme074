
# EPI5143 Winter 2020 Quiz 3.    
#Lauren Remedios (7783669)(github: lreme074)

# Question 1. The dataset mpg dataset is a base R dataset which includes data on fuel efficiency of a number
# of makes and models of automobile Have a look at this dataset using the View() command.
# how many observations and how many variables does this dataset have? (provide the code 
# and result from the console window)
# (hint:  use the nrow() and ncol() and/or the dim()  R functions )
library (tidyverse)
data ("mpg")
view (mpg)
nrow (mpg)
ncol (mpg)
#therefore there are 234 observations and 11 columns

#Question 2 modify and run the ggplot code to make each class of vehicle a different colour
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

# Question 3. further modify and run the code to use a different shape to plot vehicles
# according whether vehicle is front, rear or 4 wheel drive (drv)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class, shape = drv))

# Question 4. further modify and run the code to make the size of each point on the plot proportional
# to the number of cylinders the vehicle's engine has (cyl)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class, shape = drv, size = cyl))

# Question 5. Modify the code to add a suitable title of your choice to your plot
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class, shape = drv, size = cyl)) + 
  ggtitle ("Fuel efficiency vs. engine size")


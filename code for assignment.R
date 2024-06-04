#Downlads HollywoodsMostProfitableStories.csv database to RStudio
df<- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")

#Opens data table of csv
View(df)

#Loads tidyverse library
install.packages("tidyverse")

#Loads library
library(tidyverse)

#using str() for a brief look at the datatypes for each strings seperated into columns
str(df)

#checking for missing values
colSums(is.na(df))

#omiting any null values
df <- na.omit(df)

#checking if null values
colSums(is.na(df))

#Statistical summary 
summary(df)

#scatterplot 
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

#bar chart 
ggplot(df, aes(x=Year)) + geom_bar()

#Exporting cleaned data as CSV file
write.csv(df, "clean_df.csv")


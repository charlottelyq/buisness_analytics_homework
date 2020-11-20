#Question 1
install.packages("coronavirus")
library(coronavirus)
update_dataset() #only needed for updates
head(coronavirus,100)
#date: date of the report
#province: the applicable province for the cases
#country: country or region name for the cases
#lat: latitude for the location
#long: Longitude for the location
#type: the condition of the case (confirmed, death,recovered)
#cases: the number of daily case, in correspondence with the type column

#Question 2
#part a
library(dplyr)
library(ggplot2)
confirmed_cases_country_top20=coronavirus %>% 
  filter(type == "confirmed") %>%
  group_by(country) %>%
  summarise(total_cases = sum(cases)) %>%
  arrange(-total_cases)
head(confirmed_cases_country_top20,20)
#part b
confirmed_cases_country_top5=head(confirmed_cases_country_top20,5)
top5_cases_plot=ggplot(confirmed_cases_country_top5,aes(country,total_cases))+geom_bar(stat="identity")
#part c
top5_cases_plot+coord_flip()
#part d
top5_cases_plot+ggtitle("Top 5 countries by total cases")

#Question 3
#part a
library(tidyr)
recent_cases=coronavirus %>% 
  filter(type=="confirmed") %>%
  group_by(date) %>%
  summarise(total_cases = sum(cases)) %>%
  arrange(as.Date(date))
recent_cases
#part b
Daily_cases_plot=ggplot(recent_cases,aes(date,total_cases))
Daily_cases_plot+geom_line()

#Extra credit
#Adding labels and title for the graph
Daily_cases_plot+labs(x="Date",y="Total Cases",title="Daily Cases")
#Make the line bolder
Daily_cases_plot+geom_line(size=2)
#Changing the line to red color
Daily_cases_plot+geom_line(aes(color="#RRGGBB"))
#Changing the graph to a dot plot
Daily_cases_plot+geom_point()
#Changing the graph to a dot plot and adding a smooth line
Daily_cases_plot+geom_point()+geom_smooth()
#Changing the transparency of the dot plot
Daily_cases_plot+geom_point(alpha=0.4,color="blue")
#Changing the linetype to dashed
Daily_cases_plot+geom_line(linetype="dashed")

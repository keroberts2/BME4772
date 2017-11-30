prompt = c('gender?', 'age?', 'race?', 'employed?', 'level of education?',
           'geographic region?', 'county type?', 'poverty level?', 'health insurance?')

pause = function()
{
  if (interactive())
  {
    invisible(y)
  } }


y= c(gender = readline(prompt[1]),
     age = readline(prompt[2]),
     race = readline(prompt[3]),
     employed = readline(prompt[4]),
     education = readline(prompt[5]),
     geographicregion = readline(prompt[6]),
     county = readline(prompt[7]),
     poverty = readline(prompt[8]),
     healthinsurance = readline(prompt[9]))


#Gender
y[y=="male"]<-4.8
y[y=="female"]<-3.8

#Age
y[y=="pediatric"]<-3.5
y[y=="young adult"]<-7.1
y[y=="adult"]<-3.9
y[y=="elderly"]<-1.2


#Race
y[y=="white"]<-4.5
y[y=="black"]<-3.9
y[y=="native"]<-3.9
y[y=="islander"]<-4.2
y[y=="asian"]<-1.8
y[y=="2ormore"]<-6.5
y[y=="hispanic"]<-4.2


#Employment
y[y=="fulltime"]<-4.6
y[y=="parttime"]<-4.8
y[y=="unemployed"]<-8.7
y[y=="other"]<-3.2

#Education
y[y=="incomplete"]<-4.3
y[y=="high school"]<-4.9
y[y=="some college"]<-4.8
y[y=="college"]<-3.4

#Georaphic Region
y[y=="northeast"]<-3.8
y[y=="midwest"]<-4.1
y[y=="south"]<-4.1
y[y=="west"]<-5

#County type
y[y=="small metro"]<-4.3
y[y=="large metro"]<-4.4
y[y=="urbanized"]<-3.9
y[y=="less urbanized"]<-3.9
y[y=="rural"]<-3.6

#Poverty level
y[y=="one"]<-5.6
y[y=="two"]<-4.7
y[y=="three"]<-3.8

#Health Insurance
y[y=="private"]<-3.6
y[y=="medicaid"]<-6.2
y[y=="others"]<-2.4
y[y=="none"]<-7.0


output<-((sum(as.numeric(y))-23.625)/3.375)*10
print(paste("Risk percentage is", output))

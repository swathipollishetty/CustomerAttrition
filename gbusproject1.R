library(tidyverse)

employee_data <- read_rds(url('https://gmubusinessanalytics.netlify.app/data/employee_data.rds'))

str(employee_data)

head(employee_data)
#Which department has the highest and least number of esmployees leaving?
table(employee_data$department)

left_by_dept=employee_data %>% group_by(employee_data$department,employee_data$left_company) %>% 
  summarise(count=n()) %>%
  mutate(percentage=count/sum(count)*100)

left_by_dept

employee_data %>% ggplot(aes(x=department))+
  geom_bar(aes(fill=left_company),position = position_dodge(),color="blue")+
  coord_flip()

 #Q2
 #Travel and left_company
 table(employee_data$business_travel)
 left_due_to_travel <-employee_data %>% group_by(employee_data$business_travel,employee_data$left_company) %>% summarise(count=n())

 #plot
 employee_data %>% ggplot(aes(x=business_travel))+
   geom_bar(aes(fill=left_company),position=position_dodge(),color="black") +
   labs(title = "Employee Atrrition due to Travel",
        x = "Business travel frequency", y = "Proportion of Employees")
 
#Q3
 #Attrition and job satisfaction
 table(employee_data$job_satisfaction)
 left_job_satisfaction <-employee_data %>% 
   group_by(employee_data$job_satisfaction,employee_data$left_company) %>% 
   summarise(count=n())
 left_job_satisfaction
 #plot
 employee_data %>% ggplot(aes(x=job_satisfaction))+
   geom_bar(aes(fill=left_company),position=position_dodge(),color="black") +
   labs(title = "Employee Atrrition due to job satisfaction",
        x = "Level of Job Satisfaction", y = "Proportion of Employees")
 
 #Q4
 #left company and performance rating
 table(employee_data$performance_rating)
 left_performance_rating <-employee_data %>% group_by(employee_data$performance_rating,employee_data$left_company) %>% summarise(count=n())
 left_performance_rating
 #plot
 employee_data %>% ggplot(aes(x=performance_rating))+
   geom_bar(aes(fill=left_company),position=position_dodge(),color="black") +
   scale_x_discrete(guide = guide_axis(n.dodge=3))+
   labs(title = "Employee Atrrition due to performance_rating",
        x = "Performance Rating", y = "Proportion of Employees")
#Q5 
 table(employee_data$job_level)
 left_job_level <-employee_data %>% group_by(employee_data$job_level,employee_data$left_company) %>% summarise(count=n())
 left_job_level
 #plot
 employee_data %>% ggplot(aes(x=job_level))+
   geom_bar(aes(fill=left_company),position=position_dodge(),color="black") +
   scale_x_discrete(guide = guide_axis(n.dodge=3))+
   labs(title = "Employee Atrrition due to performance_rating",
        x = "Job Level", y = "Proportion of Employees")
#Q6
    labs(title = "Employee Attrition by Distance from home",
        x = "Miles from home", y = "Proportion of Employees")
 
 #Q7
 # Box Plot for Salary and job level given left_company
 ggplot(employee_data,aes(left_company,marital_status,color=left_company ))+
   geom_boxplot()
 ggplot(employee_data,aes(y=salary,x=job_level, color=left_company))+
   geom_boxplot() +
   facet_wrap(~left_company)+
   scale_x_discrete(guide = guide_axis(n.dodge=3))
 
 #Q8
 ggplot(employee_data,aes(y=salary,x=yrs_since_promotion, color=left_company))+
   geom_point()+
   facet_wrap(~left_company)
 #Q9
 ggplot(employee_data,aes(left_company,yrs_since_promotion,fill=left_company))+
   geom_violin()
 
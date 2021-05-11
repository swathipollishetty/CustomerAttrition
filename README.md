# CustomerAttrition
Customers leaving the company by canceling the service is the business problem in this case. The company has been facing a great financial loss due to customers leaving the company by canceling their service.The goal of my analysis is to find the reasons on why the customers are canceling their service and to suggest improvements. My analysis will aim to draw conclusions about how different attributes in the data are influencing the canceled service attribute and to predict how they will affect in the future.

Findings:
•	As the duration of the contract is increasing, less customers are canceling the service.
Importance: This finding helps the company in deciding how the durations of the contracts should be decided.
•	The customers who spoke more often have canceled the service.
Importance: This finding brings light to the fact that there might be issues with the network as customers who spoke more often have canceled.
•	There is no relation between monthly charges and customers canceling their service.
Importance: This finding helps in deciding the monthly charges.
•	The customers who leave spend lesser time on average than the ones who don’t.
Importance: This finding suggests that the time spent effects the customer attrition rates.
•	The customers paying through electronic check tend to leave more than others.
Importance: This finding suggests that the payment mode effects the customer attrition and paying through electronic check is not as flexible as other payment modes.

For my analysis, I have fit K-Nearest Neighbors, Random Forest Classifier and Classification Decision tree to the data. The response variable is canceled_service and rest are predictor variables.
To test the model performance, I have fitted the model to the test data and collected metrics to measure performance. I have constructed an ROC curve for the three models. The resultant performance metrics are as below:
Decision Trees:
Accuracy	0.7167235
Roc_auc	0.7610988

Random Forest Classifier:
Accuracy	0.7815700	
Roc_auc	0.8389668	

K-nearest Neighbors:
Accuracy	0.8122867	
Roc_auc	0.8565735	

From the above values we can conclude that the K-nearest Neighbors is the best out of the three classification models applied to the data as it has the highest accuracy of 0.81. Higher the accuracy, Lowe the error rate. The Roc_auc value is also the maximum for KNN algorithm which shows that it best predicts the values with least error rate.

Recommendations:
•	 Contracts should be signed for a longer term instead of shorter terms.
Reason:  From our data analysis bar plot in Question 1, the heights of the bar are higher for month to month contract variable. We can see that customers who leave often have month to month contract signed.
Business impact: With the increase of contract duration, there is a high chance that customers wouldn’t tend to cancel the service as they would have to terminate the contract. This would lead to customer retention.
•	Feedback rating should be taken after every call to ensure the call quality is good.
Reason: From results of Question 2, From the summary table, we can see that average call minutes for customers who canceled the service is more than those who have not canceled the service. This means that the customers who spoke more often have canceled the service, there might be issue with the call quality which the company needs to lay emphasis on. Feedback from the customers after every call would help in understanding if the quality of the call is good.
Business impact: With the feedback efforts can be made to fix the problems and enhance customer experience and decrease attrition rates.
•	New plans and offers must be implemented which keep the customers more engaged and spend more time.
Reason: From the density plot in Question 4, we see that Customers who spend less months at the company leave more often as the peak of the curve for canceled_service=yes is higher for the first few months.
Business impact: Customer engagement by introducing new plans and offers makes them spend more time and stay longer.
•	Customers should be encouraged to pay in other modes of payment rather than electronic check.
Reason: From the summary table in Question5, we see that Customers paying through electronic check left more often. This could be because this mode of payment might be unfeasible or time taking.
Business Impact: By making the customers pay in other mode of format, it makes their work easy as they do not have to face any issues faced by the customers who left.

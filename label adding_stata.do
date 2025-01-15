* Step 1: Clear the workspace to ensure no prior data interferes with the current session.
clear

* Step 2: Input the data manually for respondent, gender, and age_group variables.
input respondent gender age_group
1 1 1   
2 2 2   
3 2 3   
4 1 2  
5 1 1   
end  

* Step 3: Define value labels for the gender variable.
label define genderlbl 1 "Male" 2 "Female"

* Step 4: Define value labels for the age_group variable.
label define agelbl 1 "18-25" 2 "26-45" 3 "46 and above"

* Step 5: Assign the defined labels to the gender and age_group variables.
label values gender genderlbl
label values age_group agelbl

* Step 6: List the data to display the variables along with their value labels.
list

* Step 1: Create the dataset 'survey' with respondent, gender, and age_group variables;
data survey;
    input respondent gender age_group;  * Define the variables and their order of input;
    datalines;  
1 1 1  
2 2 2  
3 2 3  
4 1 2  
5 1 1  
;  
run;  

* Step 2: Define custom value formats for gender and age_group using PROC FORMAT;
proc format;
    value genderfmt  
        1 = 'Male'   
        2 = 'Female' ;
    value agefmt  
        1 = '18-25'         
        2 = '26-45'         
        3 = '46 and above'; 
run;  

* Step 3: Create a new dataset 'survey_labeled' with applied formats;
data survey_labeled;
    set survey;  * Use the existing 'survey' dataset as input;
    format gender genderfmt. age_group agefmt.;  * Apply the custom formats to gender and age_group;
run;  

* Step 4: Display the labeled dataset to verify the formats were applied correctly;
proc print data=survey_labeled noobs;  * Print the dataset without row numbers;
run;  

* Step 1: Import the CSV file;
proc import datafile="N:\PublicHealth_Shared\CEEH\EPICC\Shared\Data\Master Data\EPICC_MasterData_Cleaned_07.12.2023_noNA.csv"
out=a
dbms=csv
replace;
guessingrows=max;
run;
libname proclib  'N:\PublicHealth_Shared\CEEH\EPICC\Shared\Data\library';

* Step 2: Define formats for categorical variables;
proc format LIBRARY=proclib;
   value gender_status 0="female,status"
                    1="female, delinquent"
					2="male, status"
					3="male,delinquent";
	run;
* Step 3: Assign formats to categorical variables;
data a1;set a;
format gender_status gender_status.;run;


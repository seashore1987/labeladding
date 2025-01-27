* Encoding: UTF-8.
* Step 1: Define the dataset structure with variables 'gender' and 'age_group'.
DATA LIST FREE / gender (F1) age_group (F1).  /* Define the variables and their formats. */

* Step 2: Input the data for 'gender' and 'age_group'.
BEGIN DATA
1 1  
2 2 
1 3  
2 1  
1 2 
END DATA.
EXECUTE.  /* Execute the data creation step. */

* Step 3: Assign value labels to make the variables more interpretable.
VALUE LABELS gender
   1 'Male'
   2 'Female'.
VALUE LABELS age_group
   1 'Youth'
   2 'Adult'
   3 'Senior'.
EXECUTE.  /* Apply the value labels to the data. */

* Step 4: Display the dataset to verify the input and labels.
LIST.

VALUE LABELS gender_status
    0 'female,status'
    1 'female,delinquent'
    2 'male,status'
    3 'male,delinquent'.
   EXECUTE.
   
LIST.

*it is easy to use Ctrl+F in the variable view to see if it works. 

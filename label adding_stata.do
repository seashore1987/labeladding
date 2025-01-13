clear
input respondent gender age_group
1 1 1
2 2 2
3 2 3
4 1 2
5 1 1
end


label define genderlbl 1 "Male" 2 "Female"
label define agelbl 1 "18-25" 2 "26-45" 3 "46 and above"


label values gender genderlbl
label values age_group agelbl


list

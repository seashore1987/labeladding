data survey;
    input respondent gender age_group;
    datalines;
1 1 1
2 2 2
3 2 3
4 1 2
5 1 1
;
run;


proc format;
    value genderfmt
        1 = 'Male'
        2 = 'Female';
    value agefmt
        1 = '18-25'
        2 = '26-45'
        3 = '46 and above';
run;

data survey_labeled;
    set survey;
    format gender genderfmt. age_group agefmt.;
run;

function overallGPA = calculateGPA(inputFile)
% This function calculates a student's GPA
% Input: inputFile, containing information such as the student's grades
% earned for each course, and each course's number of credits
% Output: overallGPA, the student's calculated GPA

transcript = load(inputFile);
grades = transcript(:,2);
credits = transcript(:,3);
earned = grades .* credits;
totalGrade = sum(earned);
totalCredit = sum(credits);

overallGPA = totalGrade / totalCredit;
end


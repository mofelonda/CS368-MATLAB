function percentGrade = calculatePercent(exams, homeworks, quizzes)
% This function calculates the grade earned in a course based upon scores
% earned and weights applied to each category of academic assessment
% Input: exams, homeworks, quizzes; all lists of scores earned, respectively
% Output: percentGrade, the percentage earned in the course

examP = exams / 60;
hwP = homeworks / 30;
qP = quizzes / 10;

[rowsE, colsE] = size(examP);
[rowsH, colsH] = size(hwP);
[rowsQ, colsQ] = size(qP);

weightedExams = sum(examP') / colsE .* .6;
weightedHW = sum(hwP') / colsH .* .25;
weightedQuizzes = sum(qP') / colsQ .* .15;

percentGrade = (weightedExams + weightedHW + weightedQuizzes) * 100;
end


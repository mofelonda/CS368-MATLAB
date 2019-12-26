%% CS368 Spring 2017 Homework Assignment 3 
% * Name: Mo Felonda
% * Due Date: Friday, March 3 by 11:59 pm

clear
header = 'Choose function to test:';
option1 = 'calculateGPA';
option2 = 'calculatePercent - user input';
option3 = 'calculatePercent - file I/O';
option4 = 'quit';

choice = 0;

while choice ~= 4
   choice = menu(header, option1, option2, option3, option4);
   
   switch choice
       case 1
           inputFile = input('Enter filename:', 's');
           
           GPA = calculateGPA(inputFile);
           fprintf('GPA = %2.4g \n', GPA)
           
       case 2
           exams = input('Enter exams scores:');
           homeworks = input('Enter homework scores:');
           quizzes = input('Enter quiz scores:');
           
           grade = calculatePercent(exams, homeworks, quizzes);
           fprintf('Score = %2.5g%% \n', grade)
           
       case 3
           inputFile = input('Enter input filename:', 's');
           outputFile = input('Enter output filename:', 's');
           
           gradebook = load(inputFile);
           id = gradebook(:,1); % creates matrix of student IDs
           exams = gradebook(:,2:4); % creates matrix of exam scores
           homeworks = gradebook(:,5:10); % creates matrix of HW scores
           quizzes = gradebook(:,11:24); % creates matrix of quiz scores
           grade = calculatePercent(exams, homeworks, quizzes)';
           pFile = [id,grade]; % creates matrix of grades by student ID
           save(outputFile, 'pFile', '-ascii');
           
       otherwise
           disp('quit')
   end
    
end
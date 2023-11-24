% Facts representing the relationships
teaches(teacher(jones), subject(math), code(mth101)).
teaches(teacher(smith), subject(physics), code(ph101)).
teaches(teacher(davis), subject(computer_science), code(cs201)).

enrolled(student(alice), subject(math), code(mth101)).
enrolled(student(bob), subject(physics), code(ph101)).
enrolled(student(charlie), subject(computer_science), code(cs201)).
enrolled(student(diana), subject(math), code(mth101)).

% Query to find the teacher of a specific subject
teacher_of_subject(Subject, Teacher) :-
    teaches(Teacher, Subject, _).

% Query to find students enrolled in a specific subject
students_in_subject(Subject, Students) :-
    enrolled(Students, Subject, _).

% Query to find the subject code for a given subject
subject_code(Subject, Code) :-
    teaches(_, Subject, Code).
enrolled(_, Subject, Code) :-
    teaches(_, Subject, Code).

% Example queries
% Who teaches the subject "physics"?
% ?- teacher_of_subject(subject(physics), Teacher).
%
% Which students are enrolled in the subject "math"?
% ?- students_in_subject(subject(math), Students).
%
% What is the code for the subject "computer_science"?
% ?- subject_code(subject(computer_science), Code).

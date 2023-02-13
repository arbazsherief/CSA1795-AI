student(john, 101).
student(jane, 102).
student(jim, 103).

teacher(alice, 201).
teacher(bob, 202).
teacher(charlie, 203).

subject(maths, 301).
subject(physics, 302).
subject(chemistry, 303).

enroll(john, maths, alice).
enroll(jane, physics, bob).
enroll(jim, chemistry, charlie).

teaches(Teacher, Subject, Student) :-
    enroll(Student, Subject, Teacher).

subject_code(Subject, Code) :-
    subject(Subject, Code).

student_id(Student, Id) :-
    student(Student, Id).

teacher_id(Teacher, Id) :-
    teacher(Teacher, Id).
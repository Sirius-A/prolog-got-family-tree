% People
male(eddardStark).
male(jonSnow).
male(robbStark).
male(rhaegarTargaryen).
female(catelynStark).
female(sansaStark).
female(aryaStark).
female(sansaStark).

% child = Name of child, and 2 parents (male/female order doesn't matter)
child(robbStark, eddardStark, catelynStark ).
child(sansaStark, catelynStark, eddardStark ).
child(aryaStark, eddardStark, catelynStark ).
child(jonSnow, rhaegarTargaryen, catelynStark ).

/*
starkFamily(eddardStark,jonSnow,robbStark,sansaStark,aryaStark,sansaStark).
targaryenFamily(rhaegarTargaryen).
*/

father(Child,Result) :- male(Result),( child(Child,Result, _ ); child(Child, _ ,Result) ).
mother(Child,Result) :- female(Result),( child(Child,Result, _ ); child(Child,_ ,Result) ).

sons(Parent,Result) :- male(Result),child(Result, _, _ ).
daugthers(Parent,Result) :- female(Result),child(Result, _, _ ).

child(X,Y) :-

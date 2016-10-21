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

father(Child,Father) :- male(Father),( child(Child,Father, _ ); child(Child, _ ,Father) ).
mother(Child,Mother) :- female(Mother),( child(Child,Mother, _ ); child(Child,_ ,Mother) ).

sons(Parent,Sons) :- male(Sons),child(Sons, Parent, _ );child(Sons, _, Parent).
daugthers(Parent,Daugthers) :- female(Daugthers),child(Daugthers, Parent, _ );child(Daugthers, _, Parent).



/*
relations(Person1, Person2, Result) :- father(Person1,Person2); mother(Person1, Person2);
                                    sons(Person1, Person2); daugthers(Person1, Person2);
                                    */

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

child(sansaTestChild, someDude, sansaStark ).


/*
starkFamily(eddardStark,jonSnow,robbStark,sansaStark,aryaStark,sansaStark).
targaryenFamily(rhaegarTargaryen).
*/

father(Child,Father) :- male(Father),( child(Child,Father, _ ); child(Child, _ ,Father) ).
mother(Child,Mother) :- female(Mother),( child(Child,Mother, _ ); child(Child,_ ,Mother) ).
parent(Child, Parent1, Parent2) :- child(Child, Parent1, Parent2).

sons(Parent,Sons) :- male(Sons),child(Sons, Parent, _ );child(Sons, _, Parent).
daugthers(Parent,Daugthers) :- female(Daugthers),child(Daugthers, Parent, _ );child(Daugthers, _, Parent).

ancestors(Person,Ancestors) :- father(Person, Ancestors); mother(Person, Ancestors).
ancestors(Person1,Ancestor) :- ( father(Person1, Ancestors); mother(Person1, Ancestors) ) ,ancestors(Ancestors,Ancestor).



/*
relations(Person1, Person2, Result) :- father(Person1,Person2); mother(Person1, Person2);
                                    sons(Person1, Person2); daugthers(Person1, Person2);
                                    */

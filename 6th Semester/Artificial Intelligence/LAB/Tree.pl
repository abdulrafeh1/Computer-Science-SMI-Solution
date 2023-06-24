male(hamza).
male(uneeb).
male(ali).
male(muneeb).
male(rafy).
male(hassan).

female(hamna).
female(uniba).
female(alia).
female(muneeba).

parents(hamza,uniba,uneeb).		/* X(male) is a child of F and M */
parents(hamna,uniba,uneeb).		/* X(female) is child of M and F */
parents(rafy,uniba,uneeb).

parents(ali,muneeba,muneeb).
parents(alia,muneeba,muneeb).


sister(X,Y):-female(Y),parents(X,M,F),parents(Y,M,F). 		/* X is a sister of Y if Y is Female */
brother(X,Y):-male(Y),parents(X,M,F),parents(Y,M,F). 		/* X is a sister of Y if Y is male */
	
sister_of(X,Y):-female(X),parents(X,M,F),parents(Y,M,F). 	/* X is sister of Y both male and female */ 
brother_of(X,Y):-male(X),parents(X,M,F),parents(Y,M,F). 	/* X is brother of Y both male and female */ 

is_son(X,M,F):-male(X),parents(X,M,F).				/* X is male and son of M and F with it's names*/ 
is_daughter(X,M,F):-female(X),parents(X,M,F).			/* X is female and daughter of M and F and it's name*/ 

father(F,X):-male(F),parents(X,M,F),parents(X,M,F).		/* F is a father of Y */
mother(M,X):-female(M),parents(X,M,F),parents(X,M,F).		/* M is a Mother of Y */

check_male(X):-male(X).						/* X is a Male */
check_female(X):-female(X).					/* X is a Female */
rooms([bedroom(_,5),bedroom(_,4),bedroom(_,3),bedroom(_,2),bedroom(_,1)]).

notadjacent(A,B) :- 1 =\= abs(A-B).
greaterthan(A,B) :- A > B.

hallway(X) :- rooms(X),
	      member(bedroom(hunter, A), X), A\=5,
	      member(bedroom(laura, B), X), B\=1,
	      member(bedroom(arnie, C), X), C\=1, C\=5,
	      member(bedroom(ramey, D), X), 
	      member(bedroom(addiley, E), X),
	      notadjacent(C, B),
	      notadjacent(C, E),
	      greaterthan(D, B).

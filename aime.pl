ingredient(patate).
ingredient(poisson).
ingredient(boeuf).
ingredient(courgettes).

plat(soupe).
plat(salade).
plat(courgettes_a_la_viande).

inclus(soupe,patate).
inclus(soupe,poisson).
inclus(salade,laitue).
inclus(salade,pissenlit).
inclus(courgettes_a_la_viande, courgettes).
inclus(courgettes_a_la_viande, boeuf).

aime(caroline, laitue).
aime(caroline, pissenlit).
aime(albert,patate).
aime(albert,poisson).

aime(Personne, Plat) :-
    plat(Plat)
    , not(aime_pas(Personne, Plat)).

aime_pas(Personne, Plat) :-
    plat(Plat)
    , inclus(Plat, Ingredient)
    , not(aime(Personne, Ingredient))
    .

test(aime(caroline,salade)).
test(not(aime(caroline,soupe))).
test(not(aime(caroline,boeuf))).
test(not(aime(caroline,courgettes_a_la_viande))).
test(aime_pas(caroline, soupe)).
test(aime(albert, soupe)).

fail(Test) :-
    test(Test)
    , not(Test).


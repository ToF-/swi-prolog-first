ingredient(potato).
ingredient(poisson).
ingredient(boeuf).
ingredient(courgettes).

plat(soupe).
plat(salade).
plat(courgettes_a_la_viande).

inclus(soupe,potato).
inclus(soupe,poisson).
inclus(salade,laitue).
inclus(salade,pissenlit).
inclus(courgettes_a_la_viande, courgettes).
inclus(courgettes_a_la_viande, boeuf).

aime(caroline, laitue).
aime(caroline, pissenlit).

aime(caroline, Plat) :-
    plat(Plat)
    , not(aime_pas(caroline, Plat)).

aime_pas(caroline, Plat) :-
    plat(Plat)
    , inclus(Plat, Ingredient)
    , not(aime(caroline, Ingredient))
    .

test(aime(caroline,salade)).
test(not(aime(caroline,soupe))).
test(not(aime(caroline,boeuf))). % sanity check
test(not(aime(caroline,courgettes_a_la_viande))).
test(aime_pas(caroline, soupe)).

fail(Test) :-
    test(Test)
    , not(Test).


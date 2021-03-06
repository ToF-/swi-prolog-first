ingredient(potato).
ingredient(fish).
ingredient(beef).
ingredient(zuchini).

dish(soup).
dish(salad).
dish(zuchini_with_meat).

includes(soup,potato).
includes(soup,fish).
includes(salad,lettuce).
includes(salad,dandelion).
includes(zuchini_with_meat, zuchini).
includes(zuchini_with_meat, beef).

likes(caroline, lettuce).
likes(caroline, dandelion).

likes(caroline, Dish) :-
    dish(Dish)
    , not(dislikes(caroline, Dish)).

dislikes(caroline, Dish) :-
    dish(Dish)
    , includes(Dish, Ingredient)
    , not(likes(caroline, Ingredient))
    .

test(likes(caroline,salad)).
test(not(likes(caroline,soup))).
test(not(likes(caroline,beef))). % sanity check
test(not(likes(caroline,zuchini_with_meat))).
test(dislikes(caroline, soup)).

fail(Test) :-
    test(Test)
    , not(Test).


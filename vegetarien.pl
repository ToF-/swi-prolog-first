ingredient(fromage).
ingredient(lardon).
ingredient(miel).
recette(chevremiel).
recette(quiche).
contient(quiche, lardon).
contient(quiche, fromage).
contient(chevremiel, fromage).
contient(chevremiel, miel).
vegetarien(fromage).
vegetarien(miel).
vegetarien(Recette) :-
    recette(Recette)
    , not(
        ( ingredient(Ingredient)
        , contient(Recette, Ingredient)
        , not(vegetarien(Ingredient))
        )
    )
    .


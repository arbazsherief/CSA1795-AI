fruit(apple, red).
fruit(banana, yellow).
fruit(grape, green).
fruit(orange, orange).

color(Fruit, Color) :-
    fruit(Fruit, Color).

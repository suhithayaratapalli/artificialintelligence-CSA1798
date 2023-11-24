% Facts representing fruits and their colors
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).
fruit_color(strawberry, red).
fruit_color(blueberry, blue).

% Query to find the color of a specific fruit
color_of_fruit(Fruit, Color) :-
    fruit_color(Fruit, Color).

% Query to find fruits of a specific color
fruits_of_color(Color, Fruits) :-
    fruit_color(Fruits, Color).


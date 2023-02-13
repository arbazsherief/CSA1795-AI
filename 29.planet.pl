planet(mercury).
planet(venus).
planet(earth).
planet(mars).
planet(jupiter).
planet(saturn).
planet(uranus).
planet(neptune).

terrestrial_planet(mercury).
terrestrial_planet(venus).
terrestrial_planet(earth).
terrestrial_planet(mars).

gas_giant(jupiter).
gas_giant(saturn).
gas_giant(uranus).
gas_giant(neptune).

is_terrestrial_planet(Planet) :-
    terrestrial_planet(Planet).

is_gas_giant(Planet) :-
    gas_giant(Planet).

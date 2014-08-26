-module(checkout).
-export([price/1]).

price(Items) ->
	calculatePrice(lists:sort(Items)).

calculatePrice([$A, $A, $A | Tail]) ->
	130 + calculatePrice(Tail);
calculatePrice([$B, $B | Tail]) ->
	45 + calculatePrice(Tail);
calculatePrice([Head|Tail]) ->
	calculatePrice(Head) + calculatePrice(Tail);
calculatePrice([]) ->
	0;
calculatePrice($A) ->
	50;
calculatePrice($B) ->
	30;
calculatePrice($C) ->
	20;
calculatePrice($D) ->
	15.
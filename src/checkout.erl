-module(checkout).
-export([price/1]).

price(Items) ->
	price(lists:sort(Items), 0).

price([], Acc) ->
	Acc;
price([$A, $A, $A | Tail], Acc) ->
	price(Tail, Acc + 130);
price([$B, $B | Tail], Acc) ->
	price(Tail, Acc + 45);
price([Head|Tail], Acc) ->
	price(Tail, Acc + unit_price(Head)).

unit_price($A) ->
	50;
unit_price($B) ->
	30;
unit_price($C) ->
	20;
unit_price($D) ->
	15.
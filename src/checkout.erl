-module(checkout).
-export([price/1]).

price([Head|Tail]) ->
	price(Head) + price(Tail);
price([]) ->
	0;
price($A) ->
	50;
price($B) ->
	30;
price($C) ->
	20;
price($D) ->
	15.
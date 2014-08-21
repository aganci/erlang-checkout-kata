-module(checkout).
-export([price/1]).

price("") ->
	0;
price("A") ->
	50.
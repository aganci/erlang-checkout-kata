-module(checkout).
-export([price/1]).

price("") ->
	0.
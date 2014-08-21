-module(checkout_tests).
-include_lib("eunit/include/eunit.hrl").

checkout_test() ->
	?assertEqual(0, checkout:price("")),
	?assertEqual(50, checkout:price("A")).

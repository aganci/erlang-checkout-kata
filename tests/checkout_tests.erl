-module(checkout_tests).
-include_lib("eunit/include/eunit.hrl").

checkout_test() ->
	?assertEqual(0, checkout:price("")).

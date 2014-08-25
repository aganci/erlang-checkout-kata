-module(checkout_tests).
-include_lib("eunit/include/eunit.hrl").

checkout_test() ->
	?assertEqual(0,   checkout:price("")),
	?assertEqual(50,  checkout:price("A")),
	?assertEqual(80,  checkout:price("AB")),
	?assertEqual(115, checkout:price("CDBA")),

	?assertEqual(100, checkout:price("AA")),
	?assertEqual(130, checkout:price("AAA")),
    ?assertEqual(180, checkout:price("AAAA")),
    ?assertEqual(260, checkout:price("AAAAAA")),

    ?assertEqual(160, checkout:price("AAAB")),
    ?assertEqual(175, checkout:price("AAABB")).







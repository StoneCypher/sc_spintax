
-module(sc_spintax_tests).
-compile(export_all).

-include_lib("proper/include/proper.hrl").
-include_lib("eunit/include/eunit.hrl").





ex_string_test_() -> ?_assert(is_list(sc_spintax:ex_string())).
ex_parsed_test_() -> ?_assert(is_list(sc_spintax:ex_parsed())).





parse_dive_test_() -> 

    [
        ?_assertEqual( {},                                                          sc_spintax:parse_dive("")            ),
        ?_assertEqual( { <<"a">> },                                                 sc_spintax:parse_dive("a")           ),
        ?_assertEqual( { <<"a">> },                                                 sc_spintax:parse_dive("{a}")         ),
        ?_assertEqual( { [ { <<"a">> }, <<"b">> ] },                                sc_spintax:parse_dive("{a}|b")       ),
        ?_assertEqual( { [ <<"a">>, <<"b">> ] },                                    sc_spintax:parse_dive("a|b")         ),
        ?_assertEqual( { [ <<"a">>, <<"b">> ] },                                    sc_spintax:parse_dive("{a|b}")       ),
        ?_assertEqual( { <<"y">>, [ <<"a">>, <<"b">> ], <<"z">> },                  sc_spintax:parse_dive("y{a|b}z")     ),
        ?_assertEqual( { <<"y">>, [ <<"a">>, <<"b">>, <<"c">> ], <<"z">> },         sc_spintax:parse_dive("y{a|b|c}z")   ),
        ?_assertEqual( { [ <<"a">>, <<"b">> ], [ <<"c">>, <<"d">> ] },              sc_spintax:parse_dive("{a|b}{c|d}")  ),
        ?_assertEqual( { [ <<"a">>, <<"b">> ], <<" ">>, [ <<"c">>, <<"d">> ] },     sc_spintax:parse_dive("{a|b} {c|d}") ),
        ?_assertEqual( { [ <<"a">>, { <<"b ">>, [ <<"y">>, <<"z">> ] } ] },         sc_spintax:parse_dive("{a|b {y|z}}") )

    ].
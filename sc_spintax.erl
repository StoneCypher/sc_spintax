
-module(sc_spintax).





-export([

    ex_parsed/0,
    gen_from/1,

%   every/1

]).





ex_parsed() ->

    [   {   <<"This is a ">>, 
            [ <<"test">>, <<"verification">>, <<"check">> ], 
            <<" of the ">>, 
            [ <<"emergency">>, <<"cfad">>, <<"tragedy">> ],
            <<" ">>, 
            [ <<"broadcast">>, <<"dispatch">>, <<"creation">> ], 
            <<" system.">> },

        [   <<"doug">> ],

        [   <<"stan">>, <<"lou">> ],

        <<"leonard">>

    ].





gen_from(Parsed) 

    when is_binary(Parsed) ->

    Parsed;





gen_from(Parsed)

    when is_list(Parsed) ->

    gen_from(sc:random_from(Parsed));




gen_from(Parsed)

    when is_tuple(Parsed) ->

    list_to_binary([ gen_from(Term) || Term <- tuple_to_list(Parsed) ]).

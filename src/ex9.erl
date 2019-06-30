%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. VI 2019 19:13
%%%-------------------------------------------------------------------
-module(ex9).
-author("Metrashev").

%% API
-export([pack/1]).

pack(List) -> lists:reverse(pack(List,[])).

pack([],Result) 	-> Result;
pack(List,Result) 	-> [ResultTmp,NewTail] = small_pack(List,[]),
  pack(NewTail,[ResultTmp]++Result).

small_pack([Head],Result) 	-> [[Head|Result],[]];
small_pack([Head,Second|Tail],Result) when Head =/= Second
  -> [[Head|Result],[Second|Tail]];
small_pack([Head,Head|Tail], Result) when Head == Head
  -> small_pack([Head|Tail],[Head|Result]).
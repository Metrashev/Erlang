%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. VI 2019 18:35
%%%-------------------------------------------------------------------
-module(ex8).
-author("Metrashev").

%% API
-export([eliminate/1]).
%1,1,1,1,2,2,3,0,4,4,5

eliminate(List) -> lists:reverse(eliminate(List,[])).

eliminate([Head], Result) 	-> [Head|Result];
eliminate([Head,Head|Tail],Result) when Head == Head
  -> eliminate([Head|Tail], Result);
eliminate([Head,Second|Tail],Result) when Head =/= Second
  -> eliminate([Second|Tail], [Head|Result]).
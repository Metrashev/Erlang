%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. VI 2019 23:18
%%%-------------------------------------------------------------------
-module(ex2).
-author("Metrashev").

%% API
-export([getLastOne/1]).

%% 1.02 Find the last but one element of a list.
getLastOne([Element,_|[]]) 	-> Element;
getLastOne([_|Tail]) -> getLastOne(Tail).
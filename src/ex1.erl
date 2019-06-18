%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. VI 2019 22:05
%%%-------------------------------------------------------------------
-module(ex1).
-author("Metrashev").

%% API
-export([getLast/1]).

%% 1.01  Find the last element of a list.
getLast([Element]) -> Element;
getLast([_|Tail]) -> getLast(Tail).
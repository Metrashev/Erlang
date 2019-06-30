%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. VI 2019 19:19
%%%-------------------------------------------------------------------
-module(ex10).
-author("Metrashev").

%% API
-export([encode/1]).
-import(lists, [map/2]).
-import(ex9, [pack/1]).

encode(List) ->
  map(fun ([Head|Tail]) -> [length([Head|Tail]),Head] end, pack(List)).
%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. VI 2019 0:21
%%%-------------------------------------------------------------------
-module(ex4).
-author("Metrashev").

%% API
-export([my_length/1]).

my_length(L) ->
  my_length(L, 0).

my_length([], Acc) ->
  Acc;
my_length([_|T], Acc) ->
  my_length(T, Acc+1).

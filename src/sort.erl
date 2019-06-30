%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. VI 2019 20:41
%%%-------------------------------------------------------------------
-module(sort).
-author("Metrashev").

%% API
-export([merge_sort/1]).


merge_sort([]) -> [];
merge_sort([H]) ->
  [H];
merge_sort(List) ->
  {Front, Back} = split(List),
  merge(merge_sort(Front), merge_sort(Back)).

split(List) ->
  split(List, List, []).
split([], Back, Front) ->
  {lists:reverse(Front), Back};
split([_], Back, Front) ->
  {lists:reverse(Front), Back};
split([_,_ | Counter], [H | T], Result) ->
  split(Counter, T, [H | Result]).

merge([], Back) ->
  Back;
merge(Front, []) ->
  Front;
merge([L | Front], [R | Back]) when L < R ->
  [L | merge(Front, [R | Back])];
merge([L | Front], [R | Back]) ->
  [R | merge([L | Front], Back)].
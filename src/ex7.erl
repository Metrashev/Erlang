%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. VI 2019 15:57
%%%-------------------------------------------------------------------
-module(ex7).
-author("Metrashev").

%% API
-export([duplicate/2]).

duplicate(0,_) ->
   [];
duplicate(N,Term) when N > 0 ->
   [Term|duplicate(N-1, Term)].
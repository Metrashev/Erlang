%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. VI 2019 12:04
%%%-------------------------------------------------------------------
-module(ex6).
-author("Metrashev").

%% API
-export([is_palindrome/1]).

is_palindrome(List) ->
   List == lists:reverse(List).
%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. VI 2019 0:25
%%%-------------------------------------------------------------------
-module(ex5).
-author("Metrashev").

%% API
-export([reverse/1]).

reverse(List) -> reverse(List,[]).

reverse([],Result) 		-> Result;
reverse([Head|Tail],Result) 	-> reverse(Tail,[Head|Result]).
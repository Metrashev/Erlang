%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. VI 2019 0:04
%%%-------------------------------------------------------------------
-module(ex3).
-author("Metrashev").

%% API
-export([nth/2]).

%% 1.03 Find the K'th element of a list.
nth([],N) when N > 0 -> error;
nth(_,N) when N == 0 -> tooSmall;
nth([Element|_],N) when N == 1 -> Element;
nth([_|Rest],N) when N > 0 -> nth(Rest, N-1).
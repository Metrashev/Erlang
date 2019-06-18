%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. VI 2019 21:03
%%%-------------------------------------------------------------------
-module(start).
-author("Metrashev").
-import(ex1,[getLast/1]).
-import(ex2,[getLastOne/1]).
-import(ex3,[nth/2]).
-import(ex4,[my_length/1]).

%% API
-export([start/0]).

start()->
%%1.01
List = [1,2,3,4],
io:format("Last elemtent of the list is ~p~n", [ex1:getLast(List)]),

%%1.02
List = [1,2,3,4],
io:format("Last but one elemenent of the list is ~p~n", [ex2:getLastOne(List)]),

%%1.03
List = [1,2,3,4],
io:format("N elemenent of the list is ~p~n", [ex3:nth(List, 2)]),

%%1.04
List = [1,2,3,4],
io:format("Lenght of the list is ~p~n", [ex4:my_length(List)]),

%%1.04
List = [1,2,3,4],
io:format("The reversed list is ~p~n", [ex5:reverse(List)]).

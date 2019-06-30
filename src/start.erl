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
-import(ex5,[reverse/1]).
-import(ex6,[is_palindrome/1]).
-import(ex7,[duplicate/2]).

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

%%1.05
List = [1,2,3,4],
io:format("The reversed list is ~p~n", [ex5:reverse(List)]),

%%1.06
Palindrom = ["abba"],
io:format("Is palindrom ? ~p~n", [ex6:is_palindrome(Palindrom)]),

%%1.07
io:format("Duplicate ~p~n", [ex7:duplicate(5,1)]),

%%1.08
io:format("Eliminated duplicate elements ~p~n", [ex8:eliminate([1,1,1,1,2,2,3,0,4,4,5])]),

%%1.09
io:format("Pack elements ~p~n", [ex9:pack(["a", "a", "a" ,"a" , "a", "b", "a", "a", "c"])]),

%%1.10
io:format("Encoded elements ~p~n", [ex10:encode(["a", "a", "a" ,"a" , "a", "b", "a", "a", "c"])]),

%% Calculator
Values = "1 2 + 3 / 4 - 5 *",
io:format("Calculated values from RPN ~s = ~p~n", [Values, calculator:calculate(Values)]),

%% Merge Sort
UnsortedList = [1,5,9,4,0,11,3,8],
io:format("Sorted ~p~n", [sort:merge_sort(UnsortedList)]).

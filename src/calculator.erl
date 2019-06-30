%%%-------------------------------------------------------------------
%%% @author Metrashev
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. VI 2019 19:27
%%%-------------------------------------------------------------------
-module(calculator).
-author("Metrashev").

%% API
-export([calculate/1]).

calculate(Rpn) ->
  Calc = fun
           Calc(Stack, []) ->
             hd(Stack);
           Calc(Stack, [X|Xs]) ->
             case re:run(X, "^[0-9]+$") of
               {match, _} ->
                 Calc([list_to_integer(X) | Stack], Xs);
               _ ->
                 case Stack of
                   [Y1,Y2|Ys] ->
                     OpeFn = operator(X),
                     Calc([OpeFn(Y2, Y1) | Ys], Xs);
                   _ -> error("unexpected pattern found")
                 end
             end
         end,
  Expr = string:tokens(Rpn, " "),
  Calc([], Expr).

operator("+") ->
  fun(X, Y) -> X + Y end;
operator("-") ->
  fun(X, Y) -> X - Y end;
operator("*") ->
  fun(X, Y) -> X * Y end;
operator("/") ->
  fun(X, Y) -> X / Y end.
%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Jun 2022 1:58 PM
%%%-------------------------------------------------------------------
-module(exGuard).
-author("avinash").

%% API
-export([show/1, start/0, display/0, start/1]).

show(N) when N > 10 ->
  io:fwrite("greater then 10");
show(N) when N < 10 ->
  io:fwrite("Less the 10").

start() ->
  show(11).

display() ->
  N = 9,
  if
    N > 10 ->
      io:fwrite("N is Greater then 10");
    true ->
      io:fwrite("N is Less than 10")
  end.

start(case2) ->
  A = 9,
  case A of {A} when A>10 ->
    io:fwrite("The value of A is greater the 10");
    _ ->
      io:fwrite("The value of A is less then 10")
  end.



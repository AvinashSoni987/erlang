%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. Jun 2022 1:09 PM
%%%-------------------------------------------------------------------
-module(case_statements).
-author("avinash").

%% API
-export([start/0, nested/0, cases/0, for/2, print/0]).


start() ->
  A = 5,
  B = 6,

  if
    A == B ->
      io:fwrite("True");
    true ->
      io:fwrite("False")
  end.

nested() ->
  A = 4,
  B = 6,
  if
    A < B ->
      if
        A > 5 ->
          io:fwrite("A is greater than 5");
        true ->
          io:fwrite("A is less than 5")
      end;
    true ->
      io:fwrite("A is greater than B")
  end.

cases() ->
  A = 5,
  case A of
    5 -> io:fwrite("The value of A is 5");
    6 -> io:fwrite("The value of A is 6")
  end.

for(0,_) ->
  [];

for(N,Term) when N > 0 ->
  io:fwrite("Hello~n"),
  [Term|for(N-1,Term)].

print() ->
  for(5,1).
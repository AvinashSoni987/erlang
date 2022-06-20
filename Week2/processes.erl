%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. Jun 2022 1:20 PM
%%%-------------------------------------------------------------------
-module(processes).
-author("avinash").

%% API
-export([say_something/2, start_concurrency/2, start_register/0]).

say_something(_, 0) ->
  io:format("Done ~n");
say_something(Value, Times) ->
  io:format("~s ~n", [Value]),
  say_something(Value, Times-1).

start_concurrency(Value1, Value2) ->
  spawn(processes, say_something, [Value1, 3]),
  spawn(processes, say_something, [Value2, 3]).

start_register() ->
  Pid = spawn(processes, say_something, ["Hello", 1]),
  register(myprocess, Pid),
  io:fwrite("~p ~n", [registered()]).



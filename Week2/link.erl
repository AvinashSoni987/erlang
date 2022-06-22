%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Jun 2022 1:42 PM
%%%-------------------------------------------------------------------
-module(link).
-author("avinash").

%% API
-export([say_something/2, start_monitoring/0,
  start_fun/0, start_link/0,
  chain/1]).


say_something(_, 0) ->
  io:format("Done ~n");
say_something(Value, Times) ->
  io:format("~s ~n", [Value]),
  say_something(Value, Times-1).

start_link() ->
  timer:sleep(10),
  exit(reason).


start_monitoring() ->
  Pid = start_fun(),
  process_flag(trap_exit, true),
%%  link(Pid),
  receive
    {'EXIT', Pid, Why} ->
      io:format("PID: ~p died Reason ~p ~n:", [Pid, Why]),
      io:format("Restarting"),
      start_monitoring()
  end.

start_fun() ->
  Pid = spawn(fun() -> say_something("Value", 2) end),
  io:format("~p ~n", [Pid]).
%%  exit(Pid, "nothing to do").

chain(0) ->
  receive
    _ -> ok
  after 2000 ->
    exit("chain dies here")
  end;
chain(N) ->
  Pid = spawn(fun() -> chain(N-1) end),
  link(Pid),
  receive
    _ -> ok
  end.



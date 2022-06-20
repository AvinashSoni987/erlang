%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. Jun 2022 4:20 PM
%%%-------------------------------------------------------------------
-module(messages).
-author("avinash").

%% API
-export([start/0, loop/0, print_area/0]).

start() ->
  Pid = spawn(fun() -> server("HEllo") end),
  Pid ! {hello}.

server(Message) ->
  io:fwrite("~p ~n", [Message]).

loop() ->
  receive
    {rectangle, Height, Width} ->
      io:fwrite("Area of rectangle is ~p ~n", [Height * Width]),
      loop();
    {circle, R} ->
      io:fwrite("Area of circle is ~p ~n", [3.14*R*R]),
      loop();
  Other ->
    io:fwrite("Unknown"),
    loop()
  end.

print_area() ->
  Pid = spawn(fun()-> loop() end),
  Pid ! {rectangle, 5, 7}.


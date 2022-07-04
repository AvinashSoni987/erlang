%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Jul 2022 11:36 PM
%%%-------------------------------------------------------------------
-module(my_abstract).
-author("avinash").

%% API
-export([start/1, loop/1]).

start(CallbackMod) ->
  spawn(fun() -> loop(CallbackMod) end).

loop(CBM) ->
  receive
    {Sender, {do_it, A}} ->
      Sender ! CBM:fn(A),
      loop(CBM);
    stop ->
      io:format("~p (~p): Farwell!~n", [self(), ?MODULE]);
    Message ->
      io:format("~p (~p): Recieved silliness: ~tp~n", [self(), ?MODULE, Message]),
      loop(CBM)
  end.

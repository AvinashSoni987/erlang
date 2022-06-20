%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. Jun 2022 9:46 AM
%%%-------------------------------------------------------------------
-module(binary_convert).
-author("avinash").

%% API
-export([start/0]).



start() ->
  io:fwrite("~p Converted binary to List ~n",[binary_to_list(<<2, 1>>)]),
  io:fwrite("~p Converted binary to Atom ~n",[binary_to_atom(<<"Erlang">>, latin1)]),
  io:fwrite("~p Converted binary to Integer ~n",[binary_to_integer(<<"2">>)]),
  io:fwrite("~p Converted binary to Float ~n",[binary_to_float(<<"2.2">>)]).


%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. Jun 2022 11:37 PM
%%%-------------------------------------------------------------------
-module(constants).
-author("avinash").

%% API
-export([showConstants/0]).

-define(N, 532).
-define(M, "Some text").
-define(SQUARED (X), X*X).

showConstants() ->
  io:format("N = ~p ~n", [?N]),
  io:format("M = ~p ~n", [?M]),
  io:format("~p ~n", [?SQUARED(6)]).



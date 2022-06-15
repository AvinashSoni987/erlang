%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jun 2022 1:15 PM
%%%-------------------------------------------------------------------
-module(factorial).
-author("avinash").

%% API
-export([factorial/1]).

factorial(1) ->
  1;
factorial(N) ->
  N * factorial(N - 1).

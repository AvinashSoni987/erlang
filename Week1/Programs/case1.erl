%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Jun 2022 7:50 PM
%%%-------------------------------------------------------------------
-module(case1).
-author("avinash").

%% API
-export([area/3]).

area(Type, N, M) ->
  case Type of
    square -> N * N;
    circle -> math:pi() * N * N;
    triangle -> 0.5 * N * M
  end.

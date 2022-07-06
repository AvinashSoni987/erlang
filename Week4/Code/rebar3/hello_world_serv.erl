%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 05. Jul 2022 1:04 PM
%%%-------------------------------------------------------------------
-module(hello_world_serv).
-author("avinash").

%% API
-export([start_link/0, init/1]).

start_link() ->
  gen_server:start_link(?MODULE, [], []).

init([]) ->
  io:format("Hello , This is my first erlang server! ~n"),
  halt(0).
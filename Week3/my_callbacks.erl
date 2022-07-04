%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 03. Jul 2022 11:49 PM
%%%-------------------------------------------------------------------
-module(my_callbacks).
-author("avinash").
-behavior(mybeh).

%% API
-export([fn/1]).

fn(A) -> A + 1.
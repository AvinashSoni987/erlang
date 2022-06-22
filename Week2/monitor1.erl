%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Jun 2022 12:13 PM
%%%-------------------------------------------------------------------
-module(monitor1).
-author("avinash").

%% API
-export([server/0, client/2]).

server() ->
  receive
    {request, AliasReqId, Request} ->
      Result = perform_request(Request),
      AliasReqId ! {reply, AliasReqId, Result}
  end,
  server().

client(ServerPid, Request) ->
  AliasMonReqId = monitor(process, ServerPid, [{alias, reply_demonitor}]),
  ServerPid ! {request, AliasMonReqId, Request},
  %% Alias as well as monitor will be automatically deactivated if we
  %% receive a reply or a 'DOWN' message since we used 'reply_demonitor'
  %% as unalias option...
  receive
    {reply, AliasMonReqId, Result} ->
      Result;
    {'DOWN', AliasMonReqId, process, ServerPid, ExitReason} ->
      error(ExitReason)
  end.

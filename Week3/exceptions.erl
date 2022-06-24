%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. Jun 2022 6:12 PM
%%%-------------------------------------------------------------------
-module(exceptions).
-author("avinash").
-compile(export_all).

%% API
-export([]).

throws(F) ->
  try F() of
    _ -> ok
  catch
    Throw -> {throw, caught, Throw}
  end.

error(F) ->
  try F() of
    _ -> ok
  catch
    error:Error -> {error, caught, Error}
  end.

exits(F) ->
  try F() of
    _ -> ok
  catch
    exit:Exit -> {exit, caught, Exit}
  end.

greeting(1) -> throw(hey);
greeting(2) -> erlang:error(who);
greeting(3) -> exit(goodbye);
greeting(4) -> throw(hello).

meeting_someone(Greet) when is_function(Greet, 0) ->
  try Greet() of
    _ -> "Moving on."
  catch
    throw:hey -> "Hello its been a while.";
    error:who -> "Do I know you?";
    exit:goodbye -> "Its a pleasure meeting you";
    _:_ -> "Hello, I am Avinash."
  end.

talk() -> "blah blah".
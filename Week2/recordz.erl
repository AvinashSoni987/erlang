%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. Jun 2022 12:44 PM
%%%-------------------------------------------------------------------
-module(recordz).
-author("avinash").

%% API
-export([start/0]).
-record(person, {name="",id}).
-record(employee, {person, address=""}).

start() ->
  Record1 = #person{name = "Avi",id = 1},
  io:fwrite("The employee id is ~p ~n", [Record1#person.id]),
  io:fwrite("The employee name is ~p ~n", [Record1#person.name]),
  Record2 = #employee{person = #person{name = "Dan", id = 2}, address = "CC"},
  io:fwrite("The employee name is ~p ~n", [Record2#employee.person]),
  io:fwrite("~p~n",[Record2#employee.address]).



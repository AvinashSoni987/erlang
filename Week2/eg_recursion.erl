%%%-------------------------------------------------------------------
%%% @author avinash
%%% @copyright (C) 2022, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. Jun 2022 1:53 PM
%%%-------------------------------------------------------------------
-module(eg_recursion).
-author("avinash").

%% API
-export([len/1, tail_fac/1,
  tail_fac/2, tail_len/1, tail_len/2,
  duplicate/2, tail_duplicate/2, tail_duplicate/3]).


%% Length

len([]) -> 0;
len([_|T]) -> 1 + len(T).

%% Length of a tail recursion.

tail_fac(N) -> tail_fac(N, 1).

tail_fac(0,Acc) -> Acc;
tail_fac(N, Acc) when N > 0 -> tail_fac(N-1, N*Acc).

tail_len(L) -> tail_len(L, 0).

tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T, Acc+1).


%% Duplicate

duplicate(0, _) ->
  [];
duplicate(N, Term) when N > 0 ->
  [Term|duplicate(N-1,Term)].

tail_duplicate(N, Term) ->
  tail_duplicate(N,Term,[]).

tail_duplicate(0,_,List) ->
  List;
tail_duplicate(N,Term,List) ->
  tail_duplicate(N-1, Term, [Term|List]).

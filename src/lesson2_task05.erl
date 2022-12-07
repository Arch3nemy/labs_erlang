-module(lesson2_task05).
-export([main/0, reverse/1]).

reverse(L) -> reverse(L,[]).
reverse([],NewList) -> NewList;
reverse([H|T],NewList) -> reverse(T,[H|NewList]).

main()->
  erlang:display(lesson2_task05:reverse([1,2,3,4])),
  true.
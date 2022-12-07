-module(lesson2_task14).
-export([main/0, duplicate/1]).

duplicate([]) -> [];
duplicate([H | T]) -> [H,H | duplicate(T)].

main()->
  erlang:display(lesson2_task14:duplicate([a,b,c,c,d])),
  true.
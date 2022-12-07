-module(lesson2_task10).
-export([main/0, encode/1]).

encode(List) -> encode(List, 1).
encode([], _) -> [];
encode([H, H | T], Num) -> encode([H | T], Num + 1);
encode([H | T], Num) -> [{Num, H} | encode(T, 1)].

main() ->
  erlang:display(lesson2_task10:encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e])).


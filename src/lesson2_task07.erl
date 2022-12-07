-module(lesson2_task07).
-export([main/0, flatten/1]).

flatten(List) -> flatten(List, []).
flatten([], List) -> List;
flatten([H | T], List) ->  flatten(H, flatten(T,List));
flatten(H, List) ->  [H | List].

main() ->
  erlang:display(lesson2_task07:flatten([a,[],[b,[c,d],e]])).
-module(lesson2_task03).
-export([main/0, element_at/2]).

element_at(List, Item) -> element_at(Item, List, 1).

element_at(_, [], _)  -> undefined;
element_at(Index, [Item|_], Index) -> Item;
element_at(Index, [_|Tl], Counter) -> element_at(Index, Tl, Counter+1).

main()->
  erlang:display(lesson2_task03:element_at([a,b,c,d,e,f], 4)),
  erlang:display(lesson2_task03:element_at([a,b,c,d,e,f], 10)),
  true.
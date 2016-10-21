/*
    Since the online REPL doesn't have List and Record modules, that's the solution used:
*/
local Aux in
    fun {Aux Record Keys Values}
        if Keys == nil then
            Record
        else
            case Values.1 of
                X|Xs then
                {Aux {AdjoinAt Record Keys.1 {Transform Values.1}} Keys.2 Values.2}
            else {Aux {AdjoinAt Record Keys.1 Values.1} Keys.2 Values.2}
            end
        end
    end
    {Aux {Record.make L.1 L.2.1} L.2.1 L.2.2.1}
end

/*
    Best solution
*/
local Transform Zip AdjoinList in
   fun {Transform L}
      case L of
         Label|Keys|Values|Tail then
         {List.adjoinList {Record.make Label Keys} {List.zip Keys Values fun {$ X Y} X#Y end} }
      else {Inspect notList}
      end
   end

   {Browse {Transform [foo [a b c] [1 2 3]]}}
end


local AppendLists in
   fun {AppendLists L1 L2}
      local Aux in
         fun {Aux List Acc}
            case List of
               Head|Tail then {Aux Tail (Head | Acc)}
            else Acc
            end
         end
         {Aux {Reverse L1} L2}
      end
   end
   {Browse {AppendLists [1 2 3] [4 5 6]}}
end
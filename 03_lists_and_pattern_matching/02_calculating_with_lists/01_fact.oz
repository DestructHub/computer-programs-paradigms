local Fact in
   fun {Fact N}
      local Aux in
         fun {Aux End Curr Acc}
            if Curr > End then {Reverse Acc}
            else
               {Aux End (Curr + 1) ((Curr * Acc.1) | Acc)}
            end
         end
         {Aux N 2 [1]}
      end
   end
   {Browse {Fact 4}}
end
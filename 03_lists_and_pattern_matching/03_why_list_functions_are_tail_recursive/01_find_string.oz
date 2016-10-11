local Prefix FindString in
   fun {Prefix L1 L2}
      if L1 == nil then
         true
      elseif L2 == nil then
         false
      elseif L1.1 == L2.1 then
         {Prefix L1.2 L2.2}
      else
         false
      end
   end

   fun {FindString L1 L2}
      if L1 == nil then true
      elseif L2 == nil then false
      elseif {Prefix L1 L2} then true
      else {FindString L1 L2.2} end
   end

   {Browse {Prefix [1 2] [1 2 3 4]}}
   {Browse {Prefix [1 3] [1 2 3 4]}}
   {Browse {FindString [2 3 4] [1 2 3 4]}}
   {Browse {FindString [2 3 5] [1 2 3 4]}}
end
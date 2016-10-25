local NumLeaves IsBalanced Fixture in
   fun {NumLeaves Tree}
      case Tree of leaf then 1
      [] btree(1:Value left:Left right:Right) then
         {NumLeaves Left} + {NumLeaves Right}
      end
   end

   fun {IsBalanced Tree}
      case Tree of leaf then true
      [] btree(1:Value left:Left right:Right) then
         if ({Not {IsBalanced Left}} orelse {Not {IsBalanced Right}}) then false
         else
            local LeftNumLeaves RightNumLeaves in
               LeftNumLeaves = {NumLeaves Left}
               RightNumLeaves = {NumLeaves Right}

               if (
                    (LeftNumLeaves - 1) =< RightNumLeaves andthen RightNumLeaves =< (LeftNumLeaves + 1)
                  ) then
                  true
               else
                  false
               end
            end
         end
      end
   end

   Fixture = btree(
    1:42
    left:btree(
            1:24
            left:btree(1:12 left:leaf right: leaf)
            right:leaf)
    right:leaf)

   {Browse {NumLeaves Fixture}}
   {Browse {IsBalanced Fixture}}
end

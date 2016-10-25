local Infix in
   fun {Infix Tree}
      case Tree of
         leaf then nil
      else
         {Append
          {Append {Infix Tree.left} [Tree.1]}
          {Infix Tree.right}}
      end
   end

   {Browse {Infix btree(
     1:4
     left:btree(
             1:2
             left:btree(1:1 left:leaf right:leaf)
             right:btree(1:3 left:leaf right: leaf))
     right:btree(1:5 left:leaf right: leaf))}}
end

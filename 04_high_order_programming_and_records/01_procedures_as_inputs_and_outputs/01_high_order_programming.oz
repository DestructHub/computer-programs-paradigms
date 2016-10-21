local M Test in
  fun {M Int}
    fun {$} Int#{M Int-1} end
  end

  Test = {M 5}
  {Browse {Test}}
end

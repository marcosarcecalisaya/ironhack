# "ifmmp".split(//).each do |a|
#   print (a.ord-1).chr
# end


def solve_cipher(cadena, param=1)
  cadena.split(//).map  do |a|
    unless a== " " then a= (a.ord-param).chr
    else
      a= " "
    end
    end.join()

end

print "#{solve_cipher("p| uhdo qdph lv grqdog gxfn")}\n"
print "#{solve_cipher("ifmmp{")}\n"


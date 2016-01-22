# "ifmmp".split(//).each do |a|
#   print (a.ord-1).chr
# end


def solve_cipher(cadena)
 cadena.split(//).map {|a| a= (a.ord-1).chr}.join()
end

print "#{solve_cipher("ifmmp")}\n"


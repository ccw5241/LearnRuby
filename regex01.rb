a = Regexp.new('^\s*[a-z]')
b = /^\s*[a-z]/
c = %r{^\s*[a-z]}

name = "Fats Waller"
puts name =~ /a/
p name =~ /z/
p /a/ =~ name

def show_regex(a,re)
  if a =~ re
    p "#{$'}" <<"#{$&}>> #{$'}"
  else
    p "no match"
   end
  end

show_regex('very interesting', /t/)
show_regex('Fats Waller', /a/)
show_regex('Fats Waller', /ll/)
show_regex('Fats Waller', /z/)

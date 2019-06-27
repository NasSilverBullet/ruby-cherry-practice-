class User
end
puts User.class
puts Class.superclass
module Loggable
end
puts Loggable.class
puts Module.superclass


module Hoge
  private
  def hoge
    puts 'hoge'
  end
end

class Huga
  include Hoge
  def huga
    hoge
  end
end


h = Huga.new

h.huga
h.hoge # <- `<main>': private method `hoge' called for #<Huga:0x0000557d3b434c08> (NoMethodError)

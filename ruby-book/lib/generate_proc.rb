def generate_proc(array)
  counter = 0
  Proc.new do
    counter +=10
    array << counter
  end
end

values = []
pro = generate_proc(values)
p values
pro.call
p values
pro.call
p values
pro.call
p values
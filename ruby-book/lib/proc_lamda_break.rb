def proc_break
  f = Proc.new {|n| break n * 10}
  ret = [1, 2, 3].map(&f)
  "ret #{ret}"
end

def lamda_break
  f = ->(n) {break n * 10}
  ret = [1, 2, 3].map(&f)
  "ret #{ret}"
end

p lamda_break
p proc_break

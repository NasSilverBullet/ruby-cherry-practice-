def greeting(&block)
  unless block.nil?
    text = block.call('こんにちは')
    puts text
  end

  if block_given?
    text = yield 'こんばんは'
    puts text
  end
end

greeting {|text| text*2}
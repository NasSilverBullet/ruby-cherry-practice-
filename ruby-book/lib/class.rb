class User
  def initialize(name)
    @name = name
  end

  def self.create_user(names)
    names.map {|name| User.new(name)}
  end

  def hello
    "Hello, I am #{@name}"
  end
end


tom = User.new('Tom')

puts tom.hello


users = User.create_user(['Bob', 'Alice', 'Carol'])

users.each {|user| puts user.hello}
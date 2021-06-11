require 'pry'

class User
  attr_accessor :email, :age
  @@all_users = Array.new

  def initialize(email_to_save, age)
      @email = email_to_save.to_s
      @age = age
      @@all_users << self
  end

  def show_itself
    puts self
  end

  def self.all
    return @@all_users
  end

  def self.count
    return @@all_users.count
  end

  def self.find_by_email (mail)
		match = @@all_users.select {|user| user.email == mail}
    return match[0]
  end
end

#julie = User.new("julie12@julie.com",24)
#martin = User.new("martin12@mail.com",32)

#puts "Contacte Martin à ce mail #{martin.email} et il a #{martin.age} ans."
#puts "Contacte Julie à ce mail #{julie.email} et elle a #{julie.age} ans."
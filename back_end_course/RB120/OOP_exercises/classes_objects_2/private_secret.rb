class Person
  attr_writer :secret

  def share_secret
    puts secret
  end

  private
  attr_reader :secret # private getter method , can't be accssed outside the class
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
person1.share_secret
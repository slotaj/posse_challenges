class Person
  attr_reader :first_name, :last_name, :email, :state

  def initialize(person)
    @first_name = person[:first_name]
    @last_name = person[:last_name]
    @email = person[:email]
    @state = person[:state]
  end
end

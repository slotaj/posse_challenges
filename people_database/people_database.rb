require_relative "person"

class PeopleDatabase
  attr_reader :people, :person

  def initialize(people = [])
    @people = people
  end

  def add(person)
    @people << Person.new(person)
  end

  def remove(email)
    @people.delete_if { |person| email == person.email }
  end

  def get_residence(state)
    @people.find_all { |person| state == person.state}
  end

  def get_emails
    @people.map { |person| person.email }.join(", ")
  end

  def count_state(state)
    @people.count { |person| state == person.state }
  end
end

people = [Person.new(first_name: "John", last_name: "Slota", email: "John@turing.io", state: "CO")]
people_db = PeopleDatabase.new(people)
people_db.add(first_name: "Tess", last_name: "Griffin", email: "tess@turing.io", state: "CO")
puts people_db.get_residence("CO")
puts people_db.get_emails
puts people_db.count_state("CO")

require 'pry'

class School
  attr_accessor :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, student_list| student_list.sort!}
  end
end

mine = School.new("Drew U")
binding.pry

puts "hola"

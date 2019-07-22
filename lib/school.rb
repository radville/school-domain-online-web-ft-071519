require "pry"

class School
  attr_accessor :roster
  
  def initialize(roster)
    @roster = {}
  end
  
  def add_student(name, grade)
    unless @roster.keys.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster
  end
end
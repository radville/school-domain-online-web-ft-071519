require "pry"

class School
  attr_accessor :roster
  
  def initialize(name)
    @school_name = name
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
    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end
  end
end
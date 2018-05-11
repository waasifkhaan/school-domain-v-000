require 'pry'
class School 
  attr_accessor :name
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  def roster 
    @roster
  end
  def add_student(name,grade)
    @roster[grade] ||= []
    @roster[grade] << name 
    @roster
  end
  def grade(grade)
    @roster[grade]
  end
  def sort 
    sorted = {}
    
    @roster.each do |key, value|
      x = @roster.keys.sort
      sorted[key] = value.sort
    end
    binding.pry
    sorted
    
  end
end

require 'pry'
class Backer

  attr_reader :name
  #so that projects can be added to a backer's list and so that the backer can report on the projects they back.
  attr_accessor :backed_projects 
  

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def name=(name)
    @name = name
  end

  def back_project(project)
    @backed_projects << project

    #adds this backer object to the array, either way works.
    #project.add_backer(self) #adds backer through method
    project.backers << self #adds backers directly to array
      
  end

end

class Backer

  attr_reader :name
  attr_accessor :backed_projects

  INSTANCE = []
  
  def initialize(name)
    @name = name
    @backed_projects = []
    INSTANCE << self
  end

  def back_project(project)
    backed_projects.push(project)
    project.backers.push(self)
  end


end
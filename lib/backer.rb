class Backer
  attr_reader :name
  def initialize(name)
    @name = name
	@projects = []
  end
  def back_project(project)
    unless @projects.include?(project) then
	  @projects << project 
	  project.add_backer(self)
	end  
  end
  def backed_projects
    @projects
  end
end
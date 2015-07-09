class Project

  attr_reader :title

  def initialize(project)
    @title = project
    @backers = []
  end

  def add_backer(name)
    @backers << name 
  end

  def backers
    @backers
  end


end
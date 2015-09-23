class Project

  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def title
    @title
  end

  def add_backer(backer)
  
   @backers << backer
    #adds this project object to backer array
    backer.backed_projects << self #adds project directly to array
  end



end

require 'pry'
class Project
  attr_reader :title
  def initialize(title)
    @title = title
	@backers = []
  end
  def add_backer(backer)
	unless @backers.include?(backer) then
	  @backers << backer 
	  backer.back_project(self)
	end  
  end
  def backers
    @backers
  end
end
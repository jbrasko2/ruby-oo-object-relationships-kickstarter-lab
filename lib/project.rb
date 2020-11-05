class Project
    attr_reader :title
  
    def initialize(title)
      @title = title
    end
  
    def add_backer(backer)
      ProjectBacker.new(self, backer)
    end
  
    def backers
      project_backers = ProjectBacker.all.select {|x| x.project == self}
      project_backers.map {|x| x.backer}
    end
  end
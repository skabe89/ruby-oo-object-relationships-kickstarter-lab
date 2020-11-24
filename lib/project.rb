class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        place = []
        ProjectBacker.all.select{|i| i.project == self ? place << i.backer : nil}
        place
    end
end
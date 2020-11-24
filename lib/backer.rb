class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        place = []
        ProjectBacker.all.each{|i| i.backer == self ? place << i.project : nil}
        place
    end

end
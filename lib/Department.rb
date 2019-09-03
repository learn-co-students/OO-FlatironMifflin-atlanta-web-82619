class Department
    @@all = []

    def initialize 
        @@all.push(self)
    end

    def self.all
        @@all
    end
end
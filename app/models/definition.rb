class Definition

    attr_reader :content, :word

    @@all = []
    
    def initialize(content, word)
        @content = content
        @word = word
        @@all << self
    end

    def self.all 
        @@all
    end

    def print_content
        puts " ➡️  #{self.content}"
    end


end
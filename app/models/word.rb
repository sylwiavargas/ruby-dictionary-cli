class Word

    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def definitions
        Definition.all.select{|defi| defi.word == self}
    end

    def self.most_definitions
        # goal: I need to iterate over the `self.all` in order to establish how many def each word has
        # sort -> max_by
        # option 1: self.all.sort{|word| word.definitions.count}.last
        # option 2: self.all.max_by{|word| word.definitions.count}
        self.all.max_by{|word| word.definitions.count}
    end

    def self.print_all_words
        self.all.each{|word| word.print_name_and_defs}
    end

    def print_name_and_defs
        return unless self.has_definitions?
        print_name
        print_definitions
        puts "\n"
    end

    def print_name
        puts "🔥 #{self.name}:".colorize(:color => :black, :background => :yellow)
    end

    def print_definitions
        self.definitions.each(&:print_content)
    end

    def self.get_the_words(word_request)
        self.all.select{|word| word.name.include?(word_request)}
    end

    def has_definitions?
        !self.definitions.empty?
    end

end

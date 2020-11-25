class Article

    attr_reader :author, :magazine, :title
    # attr_writer :author, :magazine, :title
    # attr_accessor :author, :magazine, :title

    # ACTIVE RECORD MACRO
    # belongs_to :author
    # belongs_to :magazine

    @@all = []
    
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

end

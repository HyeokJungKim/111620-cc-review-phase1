class Magazine
  attr_accessor :name, :category

  # ACTIVE RECORD
  # has_many :articles
  # has_many :authors, through: :articles

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def articles
    # SELECT * FROM articles WHERE articles.magazine_id = self.id
    Article.all.select do |article|
      # <Magazine> == <Magazine>
      article.magazine == self
    end
  end

  def authors
    # SELECT * FROM authors
    # JOIN articles
    # ON authors.id = articles.author_id
    # WHERE articles.magazine_id = self.id
    self.articles.map do |article|
      article.author
    end
  end



  def contributing_authors

    self.authors.select do |author|
      author.magazines.count > 2
    end.uniq

  end

  def self.find_by_name(mag_name)
    Magazine.all.find do |magazine|
      magazine.name == mag_name
    end
  end


end

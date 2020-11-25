class Author
  attr_accessor :name


  # ACTIVE RECORD
  # has_many :articles
  # has_many :magazines, through: :articles

  def initialize(name)
    @name = name
  end

  def articles
    # SELECT * FROM articles WHERE articles.author_id = self.id
    Article.all.select do |article|
      # <Author> == <Author>
      article.author == self
    end
  end

  def magazines
    self.articles.map do |article|
      article.magazine
    end
  end

  def topic_areas
    self.magazines.map do |magazine|
     magazine.category
    end
  end



end

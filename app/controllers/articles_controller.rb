class ArticlesController < ApplicationController
  def random
    @articles = []
    10.times do
      @articles << generate_article
    end
  end

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to articles_path
  end

  def new
    @article = Article.new
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

    def generate_article
      @person = Person.all.sample.word
      @superlative = Superlative.all.sample.word
      @noun = Noun.all.sample.word
      @preposition = Preposition.all.sample.word
      @participle = Participle.all.sample.word
      picker = rand(3)
      case picker
      when 0
        #[<Number 5-50>]  [Reasons why] [<person> is] [<superlative>] [<noun>] [<prepositional phrase>]
      "#{rand(45)+5} Reasons why #{@person} is the #{@superlative} #{@noun} #{@preposition}"
      when 1
        #[<Number 5-50>] [Of the] [<superlative>] [<things>] [<prepositional phrase>]
        "#{rand(45)+5} Of the #{@superlative} #{@noun.pluralize(2)} #{@preposition}"
      when 2
        #[<Number 5-50>] [<things>], [<past participle>]
        "#{rand(45)+5} #{@noun.pluralize(2)}, #{@participle}"
      end
    end
end

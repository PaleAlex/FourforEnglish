class ArticlesController < ApplicationController
http_basic_authenticate_with name: "Mamma", password: "tantiauguri", only: :index
invisible_captcha only: [:new, :create]
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(whitelist_article_params)
	  if @article.save
      flash[:notice] = "Thank you for writing us. The message has been sent successfully. The teacher will contact you soon"
      redirect_to root_path
    else
      flash[:alert] = "Attention! Message not sent. Try again and be sure to do not leave empty fields/digit a wrong email"
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def index
    @articles = Article.all
  end

  private

  def whitelist_article_params
    params.require(:article).permit(:name, :subject, :message, :email, :check)
  end

end

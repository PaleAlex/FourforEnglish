class ArticlesController < ApplicationController
http_basic_authenticate_with name: "Mamma", password: "tantiauguri", only: :index

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(whitelist_article_params)
	  if @article.save
      flash[:notice] = "Grazie per averci scritto. Il messaggio è stato inviato con successo. La teacher ti risponderà entro 24 ore."
	    redirect_to root_path
    else
      flash[:alert] = "ATTENZIONE! Non è stato possibile inviare il messaggio. Assicurati che tutti i campi siano compilati e la mail sia corretta. Grazie."
      redirect_to root_path
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "Messaggio cancellato"
    redirect_to articles_path
  end

  def index
    @articles = Article.all
  end

  private

  def whitelist_article_params
    params.require(:article).permit(:name, :subject, :message, :email)
  end

end

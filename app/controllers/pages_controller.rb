class PagesController < ApplicationController

  def index
    http_cache_forever(public: true) do
      render
    end

  end

  def present
  end

  def lessons
  end

  def italian
  end

  def en
    http_cache_forever(public: true) do
      render
    end
  end

end

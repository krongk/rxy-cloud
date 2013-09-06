class PageController < ApplicationController
  layout 'page'

  def index
  end

  def about
  end

  def features
  end

  def services
  end

  def portfolio
  end

  def product_item
  end

  def blog
    @posts = Post.page(params[:page])
  end

  def blogpost
    @post = Post.find(params[:id])
  end

  def private
  end

  def help
  end

  def faq
  end
end

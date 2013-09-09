class PageController < ApplicationController
  layout 'page'
  before_action :set_comment

  def index
     @page = Page.find_by(name: 'index')
     @page ||= Page.first
  end

  def about
  end

  def contact
    @page = Page.find_by(name: 'contact')
    @page ||= Page.first
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
    @post = Post.find(params[:id] || 1)
  end

  def private
  end

  def help
  end

  def faq
  end

  private
  def set_comment
    @comment = Comment.new
  end

end

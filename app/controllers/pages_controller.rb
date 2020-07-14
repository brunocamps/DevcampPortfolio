class PagesController < ApplicationController
  def home
    @posts = Blog.all #instance variable
  end

  def about
  end

  def contact
  end
end

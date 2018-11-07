class HomeController < ApplicationController
  include HomeHelper
  def index
    getStoryIds('top')
  end
  def new
    getStoryIds('new')
  end
  def best
    getStoryIds('best')
  end
end

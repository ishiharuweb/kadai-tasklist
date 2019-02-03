class ToppagesController < ApplicationController
  def index
    if logged_in?
      @tasks = Task.all.page(params[:page]).per(10)
    end
  end
end

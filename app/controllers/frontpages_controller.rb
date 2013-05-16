class FrontpagesController < ApplicationController
  def choose_feature
    @on_page = 0;
  end
  def create
    @on_page = 0;
    @frontpage = Frontpage.create!(params[:frontpage])
      redirect_to games_path
  end
end

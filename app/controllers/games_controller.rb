class GamesController < ApplicationController
  def index
    @on_page = 1;
    @featured = Game.find(:all)[(Frontpage.find(:all)[0].featured_game.to_i-1)]
    @lessons = Lesson.find(:all)
    @games = Game.find(:all)
  end
  def show
    @on_page = 0;
    @game = Game.find(params[:id])
    #send_file @game.game.path, type => @game.game_content_type, :disposition => 'inline'
  end
  def add_game
    @on_page = 0;
  end
  def create
    @on_page = 0;
    @game = Game.new(params[:game])
    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render json: @game, status: :created, location: @game }
      else
        format.html { render action: "new" }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
    #@game = Game.new(params[:game])
    #redirect_to games_path
  end
end

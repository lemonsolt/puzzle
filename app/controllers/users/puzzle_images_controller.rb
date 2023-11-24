class Users::PuzzleImagesController < ApplicationController
  def index
    @puzzles = PuzzleImage.all
  end

  def new
    @puzzle = PuzzleImage.new
  end
  
  def create
    @puzzle = PuzzleImage.new(puzzle_params)
    @puzzle.user_id = current_user.id
    if @puzzle.save
      redirect_to puzzle_images_path
    else
      render :new
    end
  end
  
  def show
    @puzzle = PuzzleImage.find(params[:id])
  end

  def edit
    @puzzle = PuzzleImage.find(params[:id])
  end
  
  def update
    @puzzle = PuzzleImage.find(params[:id])
    if @puzzle.update
      redirect_to puzzle_image_path(@puzzle.id)
    else
      render :edit
    end
  end
  
  def destroy
    @puzzle = PuzzleImage.find(params[:id])
    @puzzle.destroy
    redirect_to puzzle_images_path
  end
  
  protected
  
  def puzzle_params
    params.require(:puzzle_image).permit(:user_id, :title, :image)
  end
  
end

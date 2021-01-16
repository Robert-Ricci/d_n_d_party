class CharactersController < ApplicationController
  
  def new
    @character = Character.new
  end

  def create
    @character = Character.create
    binding.pry
    if @character.save
     
      redirect_to user_characters_path(@character)
    else 
      render 'new'
    end
  end

  def show
    @characters = Character.all
  end

  private

  def character_params
    params.require(:character).permit(:name, :race, :klass)
  end

end

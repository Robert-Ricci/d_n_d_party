class CharactersController < ApplicationController
  
  def new
    @character = Character.new
  end

  def create
    @character = Character.create(character_params)
    # binding.pry
    @character.user_is = current_user.id
    if @character.save
     
      redirect_to user_characters_path(@character)
    else 
      render 'new'
    end
  end

  def index
    @characters = Character.all
  end

  private

  def character_params
    params.require(:character).permit(:name, :race, :klass)
  end

end

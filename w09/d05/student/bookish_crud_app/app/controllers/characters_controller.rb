#     characters GET    /characters(.:format)          characters#index
#                POST   /characters(.:format)          characters#create
#  new_character GET    /characters/new(.:format)      characters#new
# edit_character GET    /characters/:id/edit(.:format) characters#edit
#      character GET    /characters/:id(.:format)      characters#show
#                PATCH  /characters/:id(.:format)      characters#update
#                PUT    /characters/:id(.:format)      characters#update
#                DELETE /characters/:id(.:format)      characters#destroy
class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find params[:id]
  end

  def new
    @character = Character.new
  end

  def create
    character = Character.create character_params
    redirect_to character_path(character)
  end

  def edit
    @character = Character.find params[:id]
  end

  def update
    character = Character.find params[:id]
    character.update character_params
    redirect_to character_path(character)
  end

  def destroy
    Character.destroy params[:id]
    redirect_to characters_path
  end

  def character_params
    params.require(:character).permit(:name, :gender, :quirk, :book_id)
  end

end

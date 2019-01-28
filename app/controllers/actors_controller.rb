class ActorsController < ApplicationController
  def index
  	@actors = Actor.all
  end

  def new
  	@actor = Actor.new
  end

  def create
  	@actor = Actor.new(product_params)
  	if @actor.save
  		redirect_to actors_path, notice: "El actor fue creado con éxito"
  	else 
  		render :new
  	end
  end

  private 
  	def product_params
  	 	params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :image_url, :alive, :death_date, :death_place)
  	 end 
end

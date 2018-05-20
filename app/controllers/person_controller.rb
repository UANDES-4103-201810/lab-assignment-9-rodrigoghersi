class PersonController < ApplicationController
	def index

    @director = Director.all
    @actor = Actor.all
    if params[:roll] == 'actor'
      redirect_to actors_path
    else if params[:roll] == 'director'
           redirect_to derectors_path
         else
           redirect_to people_new_path
         end
    end
  end

  def new
    @actor = Actor.create
    @director = Director.create
  end

  def create
	if params[:role] == 'Actor'
		@actor = Actor.create(first_name: params[:first_name], last_name: params[:last_name] , description: params[:description] , birth_date: params[:birth_date])
    respond_to do |format|
      if @actor.save
        format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
        format.json { render :show, status: :created, location: @actor }
      else
        format.html { render :new }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end
  else if params[:role] == 'Director'
		@director = Director.create(first_name: params[:first_name], last_name: params[:last_name] , description: params[:description] , birth_date: params[:birth_date])
    respond_to do |format|
      if @director.save
        format.html { redirect_to @director, notice: 'Director was successfully created.' }
        format.json { render :show, status: :created, location: @director }
      else
        format.html { render :new }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
	end
  end
end

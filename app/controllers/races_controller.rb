class RacesController < ApplicationController
  before_action :set_race, only: [:show, :edit, :update, :destroy]

  attr_accessor :_id, :index, :name, :speed, :ability_bonuses, :age, :alignment, :size, :size_description, :starting_proficiencies,
    :languages, :language_desc, :traits, :subraces, :url, :starting_proficiency_options, :language_options, :ability_bonus_options,
    :trait_options, :error
   
    @@all = []

    def initialize(response)
        @name = name
        response.each {|key, value| self.send(("#{key}="), value)}
        save
    end

    # def save
    #     @@all << self 
    # end

    # def self.all
    #     @@all
    # end

    def self.get_race_by_name(name)
        self.all.detect do |race|
          race.name == name
        end
    end

  # GET /races
  # GET /races.json
  def index
    @races = Race.all
  end

  # GET /races/1
  # GET /races/1.json
  def show
  end

  # GET /races/new
  def new
    @race = Race.new
  end

  # GET /races/1/edit
  def edit
  end

  # POST /races
  # POST /races.json
  def create
    @race = Race.new(race_params)

    response= Race.new.race_call
    response["results"].each_with_index do |race| 
      "#{race['name']}"
  end

    # respond_to do |format|
    #   if @race.save
    #     format.html { redirect_to @race, notice: 'Race was successfully created.' }
    #     format.json { render :show, status: :created, location: @race }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @race.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /races/1
  # PATCH/PUT /races/1.json
  def update
    respond_to do |format|
      if @race.update(race_params)
        format.html { redirect_to @race, notice: 'Race was successfully updated.' }
        format.json { render :show, status: :ok, location: @race }
      else
        format.html { render :edit }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /races/1
  # DELETE /races/1.json
  def destroy
    @race.destroy
    respond_to do |format|
      format.html { redirect_to races_url, notice: 'Race was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def race_params
      params.require(:race).permit(:name, :index)
    end
end

class MentionsLegalesController < ApplicationController
  before_action :set_mentions_legale, only: [:show, :edit, :update, :destroy]

  # GET /mentions_legales
  # GET /mentions_legales.json
  def index
    @mentions_legales = MentionsLegale.all
  end

  # GET /mentions_legales/1
  # GET /mentions_legales/1.json
  def show
  end

  # GET /mentions_legales/new
  def new
    @mentions_legale = MentionsLegale.new
  end

  # GET /mentions_legales/1/edit
  def edit
  end

  # POST /mentions_legales
  # POST /mentions_legales.json
  def create
    @mentions_legale = MentionsLegale.new(mentions_legale_params)

    respond_to do |format|
      if @mentions_legale.save
        format.html { redirect_to @mentions_legale, notice: 'Mentions legale was successfully created.' }
        format.json { render :show, status: :created, location: @mentions_legale }
      else
        format.html { render :new }
        format.json { render json: @mentions_legale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentions_legales/1
  # PATCH/PUT /mentions_legales/1.json
  def update
    respond_to do |format|
      if @mentions_legale.update(mentions_legale_params)
        format.html { redirect_to @mentions_legale, notice: 'Mentions legale was successfully updated.' }
        format.json { render :show, status: :ok, location: @mentions_legale }
      else
        format.html { render :edit }
        format.json { render json: @mentions_legale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentions_legales/1
  # DELETE /mentions_legales/1.json
  def destroy
    @mentions_legale.destroy
    respond_to do |format|
      format.html { redirect_to mentions_legales_url, notice: 'Mentions legale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentions_legale
      @mentions_legale = MentionsLegale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mentions_legale_params
      params.fetch(:mentions_legale, {})
    end
end

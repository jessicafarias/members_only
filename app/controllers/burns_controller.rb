class BurnsController < ApplicationController
  before_action :set_burn, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /burns
  # GET /burns.json
  def index
    @burns = Burn.all.order('created_at DESC')
    @burn = Burn.new
  end

  # GET /burns/1
  # GET /burns/1.json
  def show
  end

  # GET /burns/new
  def new
    @burn = current_user.burns.build
  end

  # GET /burns/1/edit
  def edit
  end

  # POST /burns
  # POST /burns.json
  def create
    @burn = current_user.burns.build(burn_params)

    respond_to do |format|
      if @burn.save
        format.html { redirect_to root_path, notice: 'Burn was successfully created.' }
        format.json { render :show, status: :created, location: @burn }
      else
        format.html { render :new }
        format.json { render json: @burn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /burns/1
  # PATCH/PUT /burns/1.json
  def update
    respond_to do |format|
      if @burn.update(burn_params)
        format.html { redirect_to @burn, notice: 'Burn was successfully updated.' }
        format.json { render :show, status: :ok, location: @burn }
      else
        format.html { render :edit }
        format.json { render json: @burn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /burns/1
  # DELETE /burns/1.json
  def destroy
    @burn.destroy
    respond_to do |format|
      format.html { redirect_to burns_url, notice: 'Burn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_burn
      @burn = Burn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def burn_params
      params.require(:burn).permit(:burn)
    end
end

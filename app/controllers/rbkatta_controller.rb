class RbkattaController < ApplicationController
  before_action :set_rbkattum, only: [:show, :edit, :update, :destroy]

  # GET /rbkatta
  # GET /rbkatta.json
  def index
    @rbkatta = Rbkattum.all
  end

  # GET /rbkatta/1
  # GET /rbkatta/1.json
  def show
  end

  # GET /rbkatta/new
  def new
    @rbkattum = Rbkattum.new
  end

  # GET /rbkatta/1/edit
  def edit
  end

  # POST /rbkatta
  # POST /rbkatta.json
  def create
    @rbkattum = Rbkattum.new(rbkattum_params)

    respond_to do |format|
      if @rbkattum.save
        format.html { redirect_to @rbkattum, notice: 'Rbkattum was successfully created.' }
        format.json { render :show, status: :created, location: @rbkattum }
      else
        format.html { render :new }
        format.json { render json: @rbkattum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rbkatta/1
  # PATCH/PUT /rbkatta/1.json
  def update
    respond_to do |format|
      if @rbkattum.update(rbkattum_params)
        format.html { redirect_to @rbkattum, notice: 'Rbkattum was successfully updated.' }
        format.json { render :show, status: :ok, location: @rbkattum }
      else
        format.html { render :edit }
        format.json { render json: @rbkattum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rbkatta/1
  # DELETE /rbkatta/1.json
  def destroy
    @rbkattum.destroy
    respond_to do |format|
      format.html { redirect_to rbkatta_url, notice: 'Rbkattum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rbkattum
      @rbkattum = Rbkattum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rbkattum_params
      params.require(:rbkattum).permit(:user, :rbkatta, :comment, :time, :already)
    end
end

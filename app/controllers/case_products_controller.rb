class CaseProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_case_product, only: [:show, :edit, :update, :destroy]

  # GET /case_products
  # GET /case_products.json
  def index
    @case_products = CaseProduct.all
  end

  # GET /case_products/1
  # GET /case_products/1.json
  def show
  end

  # GET /case_products/new
  def new
    @case_product = CaseProduct.new
  end

  # GET /case_products/1/edit
  def edit
  end

  # POST /case_products
  # POST /case_products.json
  def create
    @case_product = CaseProduct.new(case_product_params)

    respond_to do |format|
      if @case_product.save
        format.html { redirect_to @case_product, notice: 'Case product was successfully created.' }
        format.json { render :show, status: :created, location: @case_product }
      else
        format.html { render :new }
        format.json { render json: @case_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_products/1
  # PATCH/PUT /case_products/1.json
  def update
    respond_to do |format|
      if @case_product.update(case_product_params)
        format.html { redirect_to @case_product, notice: 'Case product was successfully updated.' }
        format.json { render :show, status: :ok, location: @case_product }
      else
        format.html { render :edit }
        format.json { render json: @case_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_products/1
  # DELETE /case_products/1.json
  def destroy
    @case_product.destroy
    respond_to do |format|
      format.html { redirect_to case_products_url, notice: 'Case product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_product
      @case_product = CaseProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_product_params
      params.require(:case_product).permit(
        :category, :name, :description, :link,
        :color, :image, :image_height,
        case_product_descriptions_attributes: [:id, :position, :name, :description, :_destroy]
      )
    end
end

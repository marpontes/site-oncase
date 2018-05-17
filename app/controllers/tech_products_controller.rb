class TechProductsController < ApplicationController
  before_action :set_tech_product, only: [:show, :edit, :update, :destroy]

  # GET /tech_products
  # GET /tech_products.json
  def index
    @tech_products = TechProduct.all
  end

  # GET /tech_products/1
  # GET /tech_products/1.json
  def show
  end

  # GET /tech_products/new
  def new
    @tech_product = TechProduct.new
  end

  # GET /tech_products/1/edit
  def edit
  end

  # POST /tech_products
  # POST /tech_products.json
  def create
    @tech_product = TechProduct.new(tech_product_params)

    respond_to do |format|
      if @tech_product.save
        format.html { redirect_to @tech_product, notice: 'Tech product was successfully created.' }
        format.json { render :show, status: :created, location: @tech_product }
      else
        format.html { render :new }
        format.json { render json: @tech_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_products/1
  # PATCH/PUT /tech_products/1.json
  def update
    respond_to do |format|
      if @tech_product.update(tech_product_params)
        format.html { redirect_to tech_products_path, notice: 'Tech product was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_product }
      else
        format.html { render :edit }
        format.json { render json: @tech_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_products/1
  # DELETE /tech_products/1.json
  def destroy
    @tech_product.destroy
    respond_to do |format|
      format.html { redirect_to tech_products_url, notice: 'Tech product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_product
      @tech_product = TechProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tech_product_params
      params.require(:tech_product).permit(:name, :description, :code_available, :link, :code_link, :image)
    end
end

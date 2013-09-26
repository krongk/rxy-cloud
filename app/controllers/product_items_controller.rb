class ProductItemsController < ApplicationController
  layout 'page', only: [:show]
  before_filter :authenticate_user!, except: [:show]
  before_action :set_product_item, only: [:show, :edit, :update, :destroy]

  # GET /product_items
  # GET /product_items.json
  def index
    @product_items = ProductItem.page(params[:page]).order("updated_at DESC")
  end

  # GET /product_items/1
  # GET /product_items/1.json
  def show
  end

  # GET /product_items/new
  def new
    @product_item = ProductItem.new
  end

  # GET /product_items/1/edit
  def edit
  end

  # POST /product_items
  # POST /product_items.json
  def create
    @product_item = ProductItem.new(product_item_params)

    respond_to do |format|
      if @product_item.save
        format.html { redirect_to product_items_url, notice: '添加成功.' }
        format.json { render action: 'show', status: :created, location: @product_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_items/1
  # PATCH/PUT /product_items/1.json
  def update
    respond_to do |format|
      if @product_item.update(product_item_params)
        format.html { redirect_to product_items_url, notice: '修改成功.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_items/1
  # DELETE /product_items/1.json
  def destroy
    @product_item.destroy
    respond_to do |format|
      format.html { redirect_to product_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_item
      @product_item = ProductItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_item_params
      params.require(:product_item).permit(:product_cate_id, :title, :image_url, :content)
    end
end

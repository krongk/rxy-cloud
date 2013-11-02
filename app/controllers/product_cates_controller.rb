class ProductCatesController < ApplicationController
  layout 'page', only: [:show]
  before_filter :authenticate_user!, except: [:show]
  before_action :set_product_cate, only: [:show, :edit, :update, :destroy]

  # GET /product_cates
  # GET /product_cates.json
  def index
    @product_cates = ProductCate.page(params[:page]).order("updated_at DESC")
  end

  # GET /product_cates/1
  # GET /product_cates/1.json
  def show
    @product_cates = ProductCate.all
    @product_cate = ProductCate.find_by(id: params[:id])
    @product_cate ||= ProductCate.first
    @product_items = ProductItem.where(product_cate_id: @product_cate.id).page(params[:page]).order("updated_at DESC")
  end

  # GET /product_cates/new
  def new
    @product_cate = ProductCate.new
  end

  # GET /product_cates/1/edit
  def edit
  end

  # POST /product_cates
  # POST /product_cates.json
  def create
    @product_cate = ProductCate.new(product_cate_params)

    respond_to do |format|
      if @product_cate.save
        format.html { redirect_to product_items_url, notice: '添加成功.' }
        format.json { render action: 'show', status: :created, location: @product_cate }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_cate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_cates/1
  # PATCH/PUT /product_cates/1.json
  def update
    respond_to do |format|
      if @product_cate.update(product_cate_params)
        format.html { redirect_to product_items_url, notice: '修改成功.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_cate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_cates/1
  # DELETE /product_cates/1.json
  def destroy
    @product_cate.destroy
    respond_to do |format|
      format.html { redirect_to product_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_cate
      @product_cate = ProductCate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_cate_params
      params.require(:product_cate).permit(:name)
    end
end

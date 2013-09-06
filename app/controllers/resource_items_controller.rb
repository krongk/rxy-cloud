# encoding: utf-8
require 'fileutils'
class ResourceItemsController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]
  before_action :set_resource_item, only: [:show, :edit, :update, :destroy]

  # GET /resource_items
  # GET /resource_items.json
  def index
    @resource_items = ResourceItem.page(params[:page]).order("updated_at DESC")
  end

  # GET /resource_items/1
  # GET /resource_items/1.json
  def show
  end

  # GET /resource_items/new
  def new
    @resource_item = ResourceItem.new
  end

  # GET /resource_items/1/edit
  def edit
  end

  # POST /resource_items
  # POST /resource_items.json
  def create
    @resource_item = ResourceItem.new(resource_item_params)

    respond_to do |format|
      if @resource_item.save
        format.html { redirect_to @resource_item, notice: '资源添加成功.' }
        format.json { render action: 'show', status: :created, location: @resource_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @resource_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resource_items/1
  # PATCH/PUT /resource_items/1.json
  def update
    respond_to do |format|
      if @resource_item.update(resource_item_params)
        format.html { redirect_to @resource_item, notice: '资源添加成功.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resource_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_items/1
  # DELETE /resource_items/1.json
  def destroy
    @resource_item.destroy
    respond_to do |format|
      format.html { redirect_to resource_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_item
      @resource_item = ResourceItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resource_item_params
      params.require(:resource_item).permit(:avatar, :cate, :name, :path)
    end
end

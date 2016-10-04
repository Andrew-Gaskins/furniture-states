class InventoryController < ApplicationController
  def all_products
  	@products = Product.order(price: :desc)
  end

  def one_product
  	@product = Product.find(params[:id])
  end

  def by_category
  	@category = params[:category]
  	@products = Product.where(category: params[:category])
  end
end

class ProductsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def tagged
    if params[:tag].present?
      @products = Product.tagged_with(params[:tag])
    else
      @products = Product.all
    end
  end

  private

  def product_params
  params.require(:product).permit(:price_cents, :name, :sku, :category, :photo_url, :tag_list, :description)
end

end

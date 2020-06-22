class ProductreviewsController < ApplicationController
  def create
    @productreview = Productreview.new(productreview_params)
    @product = Product.find(params[:product_id])
    @productreview.product = @product
    if @productreview.save
      redirect_to product_path(@product)
    else
      render 'products/show'
    end
  end

  private
  def productreview_params
    params.require(:productreview).permit(:content, :rating)
  end
end

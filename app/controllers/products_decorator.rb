ProductsController.class_eval do
  def google_merchant
    @products = Product.not_deleted
  end
end
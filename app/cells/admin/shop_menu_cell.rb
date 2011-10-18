class Admin::ShopMenuCell < ::Admin::SubMenuCell

  protected

  def build_list
    add :products,  :url => admin_products_url
    add :orders,    :url => admin_orders_url
  end

end
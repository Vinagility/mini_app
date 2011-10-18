class Product

  include ::Mongoid::Document
  include ::Mongoid::Timestamps

  ## fields ##
  field :name
  field :price, :type => Float
  field :description

  ## associations ##
  referenced_in :site

  ## validations ##
  validates_presence_of       :name, :price
  validates_numericality_of   :price

  ## scopes ##
  scope :ordered, :order_by => :name.asc

  ## behaviors ##
  mount_uploader :image, ShopUploader

  ## methods ##

  def to_liquid
    Shop::Liquid::Drops::Product.new(self)
  end

end
class Order

  include ::Mongoid::Document
  include ::Mongoid::Timestamps

  ## fields ##
  field :total, :type => Float
  field :notes

  ## associations ##
  referenced_in :site

  ## validations ##
  validates_presence_of       :total
  validates_numericality_of   :total

end
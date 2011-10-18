class Site

  ## associations ##
  references_many :products,  :validate => false
  references_many :orders,    :validate => false

end
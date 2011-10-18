class ShopUploader < CarrierWave::Uploader::Base

  def store_dir
    self.build_store_dir('sites', model.site_id, 'shop', model.class.name.underscore, model.id)
  end

end
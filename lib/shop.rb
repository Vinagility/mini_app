if Rails.env.development?
  load File.join(File.dirname(__FILE__), 'shop', 'liquid.rb')
else
  require 'shop/liquid'
end

module Shop
end
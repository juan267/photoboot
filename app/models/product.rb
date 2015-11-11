class Product < ActiveRecord::Base
  serialize :prices, Hash
  serialize :sizes, Array
end

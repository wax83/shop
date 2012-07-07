# == Schema Information
#
# Table name: products
#
#  created_at  :datetime         not null
#  description :text
#  id          :integer          not null, primary key
#  name        :string(255)
#  price       :float
#  published   :boolean
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :published
end

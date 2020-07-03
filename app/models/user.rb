class User < ApplicationRecord
  has_many :microposts
  before_save :upcase_name

  scope :search_name, ->(name) do
    where("name LIKE '%#{name}%'")
  end

  scope :order_by_created_at, ->(sort_key) do
    order(created_at: sort_key)
  end


  def upcase_name
    self.name = name.upcase
  end

end

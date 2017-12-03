class ApplicationRecord < ActiveRecord::Base
  belongs_to :product,optional:true
end
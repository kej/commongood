class Matrix < ActiveRecord::Base

	has_many :indicators

	validates :title, uniqueness: true

end

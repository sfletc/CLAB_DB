class Oligo < ActiveRecord::Base
	default_scope -> { order('oligo_no ASC') }
	belongs_to :user
	validates :user_id, presence: true
end

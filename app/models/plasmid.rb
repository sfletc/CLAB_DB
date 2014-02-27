class Plasmid < ActiveRecord::Base
	default_scope -> { order('id ASC') }
	belongs_to :user
	validates :user_id, presence: true
	# has_attached_file :gbk
	# validates_attachment_content_type :gbk, :content_type => 'text/plain'
	mount_uploader :gbkcw, GbkCwUploader
end

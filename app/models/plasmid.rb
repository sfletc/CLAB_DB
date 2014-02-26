class Plasmid < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
	# has_attached_file :gbk
	# validates_attachment_content_type :gbk, :content_type => 'text/plain'
	mount_uploader :gbkcw, GbkCwUploader
end

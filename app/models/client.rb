class Client < ActiveRecord::Base
	scope :vip_gold, -> { where(vip: true, gender: true) }
	scope :vip, -> { where(vip: true) }
	scope :pela_bola, -> {where(vip: false)}
	scope :maybe, -> {where(vip: false, gender: true)}

	validates :email, uniqueness: true
	validates :name, :phone, :email, presence: true
	validates :gender, inclusion: {in:[true, false]}

end

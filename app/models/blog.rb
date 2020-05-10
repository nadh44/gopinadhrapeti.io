class Blog < ApplicationRecord
  belongs_to :user
 extend FriendlyId
  friendly_id :title, use: :slugged
  scope :Reviews, -> { where(:category => "Reviews") }
scope :FAQ, -> { where(:category => "FAQ") }
scope :General, -> { where(:category => "General") }
scope :Quality, -> { where(:category => "Quality") }
scope :Other, -> { where(:category => "Other") }
scope :Payment, -> { where(:category => "Payment") }
scope :Shipping, -> { where(:category => "Shipping") }
scope :CancelReturn, -> { where(:category => "CancelReturn") }
has_many :blog_photos, dependent: :destroy


end

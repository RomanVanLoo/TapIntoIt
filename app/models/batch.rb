class Batch < ApplicationRecord
  belongs_to :brewery
  belongs_to :beer
  has_many :review_batches, dependent: :destroy
  validates :bottled_date, presence: true
  validates :brewery, presence: true
  has_many :notif, as: :notifable
  has_many :batches, through: :beer
  # after_create :send_qr

  def send_qr
    UserMailer.welcome(self.brewery.user, self.id).deliver_now
  end

  def rating
    ratings = ReviewBatch.where(batch: self).pluck(:rating)
    return 0 if ratings.blank?
    avg = ratings.sum / ratings.size.to_f
  end
end

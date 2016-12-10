class Bill < ActiveRecord::Base
  has_many :subscriptions
  validates_uniqueness_of :bill_id
  def roll_call
  end

  def hash_status
  end
end

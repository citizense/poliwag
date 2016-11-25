class Bill < ActiveRecord::Base
  validates_uniqueness_of :bill_id

  def hash_status
  end
end

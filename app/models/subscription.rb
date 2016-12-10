class Subscription < ActiveRecord::Base
  belongs_to :details
  belongs_to :user
end

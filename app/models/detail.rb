class Detail < ActiveRecord::Base
  belongs_to :bills, :foreign_key => "lbill_id"
end

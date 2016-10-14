class Address < ActiveRecord::Base
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true,
            length: {is: 2},
            format: {with: /[A-Z]/, message: "Please use two capital letters"}
  validates :zip_code, presence: true,
                       length: {is: 5}
  # belongs_to :user

  # has_many :legislators, through: :address_legislators
  # has_many :address_legislators, dependent: :destroy
  def index
    @address = Address.new(address_params) #creating address updates user object
    if @address.save
      current_user.address = @address
      @address.convert_to_lat_long_for_user
      create_legislators
      redirect_to root_path
    else
      render "welcome/index"
    end
  end

	def self.search(search)
	  where("name LIKE ?", "%#{search}%") 
	  where("content LIKE ?", "%#{search}%")
	end

  private 

  def address_params
    params.require(:address).permit(:street, :city, :state, :zip_code)
  end
end

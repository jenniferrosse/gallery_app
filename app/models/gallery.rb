class Gallery < ActiveRecord::Base

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :thumbnail, styles: { large: "1000x1000#", medium: "500x500#", small: "200x200#", thumb: "100x100#", tiny: "75x75#", }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/

end

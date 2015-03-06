class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true, 
  						   uniqueness: true,
  						   format: {
  						   	 with: /\A[a-zA-Z0-9]*\z/,
  						   	 message: 'Must be formatted correctly.'
  						   }

  has_many :statuses

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.facebookName = auth.name
        user.password = Devise.friendly_token[0,20]
      end
  end

  def full_name
  	first_name + " " + last_name
  end

end

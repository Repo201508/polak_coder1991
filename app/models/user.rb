class User < ActiveRecord::Base
  #do autentykacji przez fejsa wymagane
  devise :omniauthable, :omniauth_providers => [:facebook]  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :orders
  has_many :reviews

  #do ankiety relacje
  has_many :answers
  has_many :questions, through: :answers

  def to_s
   	"#{email}"
  end

  #do autentykacji przez fejsa wymagane te dwie metody
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      #friendly_token -> generate a friendly string randomly to be used as token
      user.password = Devise.friendly_token[0,20]
    end
  end

  def self.new_with_session(params, session)
    #tap wrzuca do kodu to co zwroci "super" z modelu po ktorym dziedziczy te metode
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
         
end

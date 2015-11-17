class User < ActiveRecord::Base
 after_create :send_welcome_email 

  private

    def send_welcome_email
      UserMailer.welcome_email(self).deliver
    end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :pins
         validates :name, presence: true
end

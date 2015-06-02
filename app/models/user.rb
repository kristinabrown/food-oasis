class User < ActiveRecord::Base
  has_secure_password
 
  has_many :bulletins
  
  def self.find_or_create_from_auth(auth)
    user = User.find_or_create_by(
      provider: auth.provider, 
      uid: auth.uid
    )
    user.first_name = auth.info.nickname
    user.last_name = auth.info.name
    user.password_digest = auth.credentials.secret
    user.image_url = auth.info.image
    # user.token = auth.credentials.token
    user.save

    user 
  end
end

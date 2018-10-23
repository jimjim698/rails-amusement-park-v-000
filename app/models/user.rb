class User < ActiveRecord::Base
  has_secure_password

  def mood
    if !self.admin && self.happiness > self.nausea
      "happy"
    else
      "sad"
    end
  end


end

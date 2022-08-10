class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        #  :recoverable, :rememberable, :validatable,
        :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  # def as_json(options)
  #   super({ only: %i[id email created_at] }.merge(options))
  # end
  
end

class Post < ApplicationRecord
    belongs_to :users, optional: true

    def user
        return User.find_by(id: self.user_id)
    end

end

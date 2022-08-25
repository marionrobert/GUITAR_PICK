module ApplicationHelper
  def find_user_avatar
    if current_user.avatar.attached?
      return current_user.avatar.key
    else
      return User.find_by(email: "samantha@gmail.com").avatar.key
    end
  end
end

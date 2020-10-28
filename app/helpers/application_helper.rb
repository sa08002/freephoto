module ApplicationHelper

  # def avatar_url(user)
  #   return user.profile_photo unless user.profile_photo.nil?
  #   gravatar_id = Digest::MD5::hexdigest(user.email).downcase
  #   "https://qiita-user-contents.imgix.net/https%3A%2F%2Fwww.gravatar.com%2Favatar%2F00000000000000000000000000000000%3Fd%3Dmp?ixlib=rb-1.2.2&auto=format&gif-q=60&q=75&s=cc308fe2b132632f608891adf96b3f44"
  # end
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end

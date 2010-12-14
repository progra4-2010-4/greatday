class User < Omnisocial::User
  # Make any customisations here
  # Paperclip
  has_attached_file :photo,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>" }

end

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "abanik.com",
  :user_name            => "abanik",
  :password             => "classten10",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
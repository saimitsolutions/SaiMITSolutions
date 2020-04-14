class Contact < MailForm::Base
  attribute :firstname,      :validate => true
  attribute :lastname,      :validate => true
  attribute :phone_number,      :validate => true, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Enter valied mobile number" }
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :subject,    :validate => true  
  attribute :message,    :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact Form Inquiry",
      :to => "saimitsolution@gmail.com",
      #:from => %("#{firstname}" <#{email}>)
      :from => "saimitsolution@gmail.com"
    }
  end
end	
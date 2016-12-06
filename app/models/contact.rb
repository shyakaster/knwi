class Contact < MailForm::Base
	attribute :name, validate: true
		attribute :email, validate: true, email: true
		attribute :message, validate: true
		attribute :telephone, validate: true
		attribute :zipcode, captcha: true

	def headers
		{
			:subject => "brandfieldadvertising Contact Form",
			:to => "allan@brandfieldadvertising.com",
			:from => %("#{name}" <#{email}>)

		}

	end
end

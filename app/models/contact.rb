class Contact < MailForm::Base
	attribute :name, validate: true
		attribute :email, validate: true, email: true
		attribute :message, validate: true
		attribute :telephone, validate: true
		attribute :zipcode, captcha: true

	def headers
		{
			:subject => "KNWI Contact Form",
			:to => "nyombi@knwi.co.ug",
			:from => %("#{name}" <#{email}>)

		}

	end
end

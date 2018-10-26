class ContacteMailer < ActionMailer::Base

	default to: 'ferran.cabrer@110.cat'


	def contacte_mailer(nom, email, missatge)
		@nom = nom
		@email = email
		@missatge = missatge
		mail(from: email, subject: 'Missatge del contacte')
	end


end

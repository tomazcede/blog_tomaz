module ApplicationHelper
	def display_session_links
		capture do
			if user_signed_in?
				concat link_to "Uredi profil", edit_user_registration_path, class: 'btn btn-sm btn-outline-secondary'
				concat " "
				concat link_to "Odjava", destroy_user_session_path, method: :delete, class: 'btn btn-sm btn-outline-secondary'
				concat " "
			else
				concat link_to "Prijava", new_user_session_path, class: 'btn btn-sm btn-outline-secondary'
				concat " "
				concat link_to "Registracija", new_user_registration_path, class: 'btn btn-sm btn-outline-secondary'
				concat " "
			end
		end
	end

	def nav_links
		capture do
			concat link_to "Novice", news_index_url, class: 'p-2 link-secondary'
			concat " "

		end
	end
end

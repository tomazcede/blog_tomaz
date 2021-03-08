module NewsHelper
	def display_news_index_links(news)
		concat link_to 'Show', news
        capture do
			if current_user == news.user
		        concat link_to 'Edit', edit_news_path(news)
		        concat " "
		        concat link_to 'Destroy', news, method: :delete, data: { confirm: 'Are you sure?' }
		        concat " "

		    end
		end
	end

	def display_news_show_links(news)
		capture do
			if current_user == news.user
				concat link_to 'Edit', edit_news_path(news)
				concat " "
			end
			concat link_to 'Back', news_path
		end
	end
end

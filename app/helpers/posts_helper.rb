module PostsHelper
	def display_post_index_links(post)
		capture do
			if current_user == post.user
		        concat link_to 'Edit', edit_post_path(post)
		        concat " "
		        concat link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }
		        concat " "

		    end
		end
	end

	def display_post_show_links(post)
		capture do
			if current_user == post.user
				concat link_to 'Edit', edit_post_path(post)
				concat " "
			end
			concat link_to 'Back', posts_path
		end
	end
end

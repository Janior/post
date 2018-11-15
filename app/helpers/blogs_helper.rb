module BlogsHelper
	def form_title
		@blog.new_record? ? "Publicar post" : "Modificar post"
	end
end

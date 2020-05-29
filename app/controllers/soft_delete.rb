module SoftDelete
	def trash
		@object.update(trashed: true)
		redirect_to root_path
	end

	def restore
		@object.update(trashed: false)
		redirect_to root_path
	end
end
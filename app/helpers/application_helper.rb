module ApplicationHelper

	def flash_class(type)
		case type
		when "alert"
			"alert-error"
		when "notice"
			"alert-success"
		when "error"
		"alert-danger"
		else
			""
		end
	end

end

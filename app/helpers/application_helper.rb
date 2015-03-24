module ApplicationHelper
	
	def uniqueness
		@uniq_sites = Location.pluck(:site).uniq
    	@uniq_programs = Location.pluck(:program).uniq
    	@uniq_zips = Location.pluck(:zip).uniq
    	@uniq_grades = Location.pluck(:grade).uniq
    end

	def set_locations
		if params[:site_query] && params[:program_query] && params[:zip_query] && params[:grade_query]
		  @locations = Location.where(site: params[:site_query], program: params[:program_query], zip: params[:zip_query], grade: params[:grade_query] )
		elsif params[:site_query] && params[:program_query] && params[:zip_query] && params[:grade_query].nil?
			@locations = Location.where(site: params[:site_query], program: params[:program_query], zip: params[:zip_query] )
		elsif params[:site_query] && params[:program_query] && params[:grade_query]
			@locations = Location.where(site: params[:site_query], program: params[:program_query], grade: params[:grade_query] )
		elsif params[:site_query] && params[:zip_query] && params[:grade_query]
			@locations = Location.where(site: params[:site_query], zip: params[:zip_query], grade: params[:grade_query] )
		elsif params[:program_query] && params[:zip_query] && params[:grade_query]
			@locations = Location.where(program: params[:program_query], zip: params[:zip_query], grade: params[:grade_query] )
		elsif params[:site_query] && params[:program_query]
			@locations = Location.where(site: params[:site_query], program: params[:program_query] )
		elsif params[:site_query] && params[:zip_query]
			@locations = Location.where(site: params[:site_query], zip: params[:zip_query] )
		elsif params[:site_query] && params[:grade_query]
			@locations = Location.where(site: params[:site_query], grade: params[:grade_query] )
		elsif params[:program_query] && params[:zip_query]
			@locations = Location.where(program: params[:program_query], zip: params[:zip_query] )
		elsif params[:program_query] && params[:grade_query]
			@locations = Location.where(program: params[:program_query], grade: params[:grade_query] )
		elsif params[:zip_query] && params[:grade_query]
			@locations = Location.where(zip: params[:zip_query], grade: params[:grade_query] )
		elsif params[:site_query]
			@locations = Location.where(site: params[:site_query] )
		elsif params[:program_query]
			@locations = Location.where(program: params[:program_query] )
		elsif params[:zip_query]
			@locations = Location.where(zip: params[:zip_query] )
		elsif params[:grade_query]
			@locations = Location.where(grade: params[:grade_query] )
		else
		  @locations = Location.all
		end
	end

	# def set_locations_take_deux
	# 	if params[:site_query].nil? && params[:program_query].nil? && params[:zip_query].nil? && params[:grade_query].nil?
	# 		@locations = Location.all
	# 	elsif params[:site_query].present? && params[:program_query].nil? && params[:zip_query].nil? && params[:grade_query].nil?
	# 		@locations = Location.where(site: params[:site_query] )
	# 	end
		
	# end
end

module ApplicationHelper
	
	def uniqueness
		@uniq_sites = Location.pluck(:site).uniq.sort
    	@uniq_programs = Location.pluck(:program).uniq.sort
    	@uniq_zips = Location.pluck(:zip).uniq.sort
    	@uniq_grades = Location.pluck(:grade).uniq.sort
    end

	def set_locations
		#all empty
		if params[:site_query].nil? && params[:program_query].nil? && params[:zip_query].nil? && params[:grade_query].nil?
		  @locations = Location.all
		 #all empty but grade
		elsif params[:site_query].empty? && params[:program_query].empty? && params[:zip_query].empty? && params[:grade_query].present?
			@locations = Location.where(grade: params[:grade_query] )
			locations_not_there?
		#all empty but zip
		elsif params[:site_query].empty? && params[:program_query].empty? && params[:zip_query].present? && params[:grade_query].empty?
			@locations = Location.where(zip: params[:zip_query] )
			locations_not_there?
		#all empty but program
		elsif params[:site_query].empty? && params[:program_query].present? && params[:zip_query].empty? && params[:grade_query].empty?
			@locations = Location.where(program: params[:program_query] )
			locations_not_there?
		#all empty but site
		elsif params[:site_query].present? && params[:program_query].empty? && params[:zip_query].empty? && params[:grade_query].empty?
			@locations = Location.where(site: params[:site_query] )
			locations_not_there?
		#all empty but zip, grade
		elsif params[:site_query].empty? && params[:program_query].empty? && params[:zip_query].present? && params[:grade_query].present?
			@locations = Location.where(zip: params[:zip_query], grade: params[:grade_query] )
			locations_not_there?
		#all empty but program, grade
		elsif params[:site_query].empty? && params[:program_query].present? && params[:zip_query].empty? && params[:grade_query].present?
			@locations = Location.where(program: params[:program_query], grade: params[:grade_query] )
			locations_not_there?
		#all empty but program, zip
		elsif params[:site_query].empty? && params[:program_query].present? && params[:zip_query].present? && params[:grade_query].empty?
			@locations = Location.where(program: params[:program_query], zip: params[:zip_query] )
			locations_not_there?
		#all empty but site, grade
		elsif params[:site_query].present? && params[:program_query].empty? && params[:zip_query].empty? && params[:grade_query].present?
			@locations = Location.where(site: params[:site_query], grade: params[:grade_query] )
			locations_not_there?
		#all empty but site, zip
		elsif params[:site_query].present? && params[:program_query].empty? && params[:zip_query].present? && params[:grade_query].empty?
			@locations = Location.where(site: params[:site_query], zip: params[:zip_query] )
			locations_not_there?
		#all empty but site, program
		elsif params[:site_query].present? && params[:program_query].present? && params[:zip_query].empty? && params[:grade_query].empty?
			@locations = Location.where(site: params[:site_query], program: params[:program_query] )
			locations_not_there?
		#all present except for site
		elsif params[:site_query].empty? && params[:program_query].present? && params[:zip_query].present? && params[:grade_query].present?
			@locations = Location.where(program: params[:program_query], zip: params[:zip_query], grade: params[:grade_query] )
			locations_not_there?
		#all present except for program
		elsif params[:site_query].present? && params[:program_query].empty? && params[:zip_query].present? && params[:grade_query].present?
			@locations = Location.where(site: params[:site_query], zip: params[:zip_query], grade: params[:grade_query] )
			locations_not_there?
		#all present except for zip
		elsif params[:site_query].present? && params[:program_query].present? && params[:zip_query].empty? && params[:grade_query].present?
			@locations = Location.where(site: params[:site_query], program: params[:program_query], grade: params[:grade_query] )
			locations_not_there?
		#all present except for grade
		elsif params[:site_query].present? && params[:program_query].present? && params[:zip_query].present? && params[:grade_query].empty?
			@locations = Location.where(site: params[:site_query], program: params[:program_query], zip: params[:zip_query] )
			locations_not_there?
		#all present
		elsif params[:site_query].present? && params[:program_query].present? && params[:zip_query].present? && params[:grade_query].present?
		  @locations = Location.where(site: params[:site_query], program: params[:program_query], zip: params[:zip_query], grade: params[:grade_query] )
		  locations_not_there?
		else
			@locations = Location.all
			@message =  "No program meets your criteria."
		end
	end

	def locations_not_there?
		if @locations.present? == false
			@message =  "No program meets your criteria."
		end
	end
end

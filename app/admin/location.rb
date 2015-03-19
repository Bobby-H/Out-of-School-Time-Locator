ActiveAdmin.register Location do

permit_params :program, :latitude, :longitude, :address, :zip, :site, :contact, :email, :school_Number, :school, :asep, :sep, :cost, :scholarship_financial, :Assistance, :transportation, :bsep, :website, :hours, :phone

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end

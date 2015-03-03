class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
    	
        t.string        :first_name
        t.string        :last_name
        t.string        :email
        t.string        :home_phone
        t.string        :cell_phone
        t.text          :street_address_1
        t.text          :street_address_2
        t.string        :city
        t.string        :state
        t.integer       :zip
        t.string        :country
        t.date          :birthdate
        t.string        :gender
        t.string        :school

        t.text          :additional_info
        t.references    :workshop
        t.references    :user

    end
  end
end

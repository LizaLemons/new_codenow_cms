# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)

jesse = Applicant.create(
	first_name: "Jesse",
	last_name: "Sessler", 
	email: "jesse@gmail.com",
	home_phone: "828-243-6504",
	cell_phone: "828-222-1234",
	street_address_1: "123 3rd avenue", 
	street_address_2: "",
	city: "New York",
	state: "NY",
	zip: "",
	country: "United States", 
	birthdate: "", 
	gender: "male", 
	school: "Long Island High School",
	additional_info: JSON.generate({
		})
	)

liza = Applicant.create(
	first_name: "Liza",
	last_name: "Ramo", 
	email: "liza@gmail.com",
	home_phone: "900.123.2344",
	cell_phone: "800.876.0987",
	street_address_1: "123 3rd avenue", 
	street_address_2: "Apt 2",
	city: "Brooklyn",
	state: "NY",
	zip: "",
	country: "United States", 
	birthdate: "",
	gender: "female", 
	school: "Hendersonville High School",
	additional_info: ""
	)

alana = Applicant.create(
	first_name: "Alana",
	last_name: "Ramo", 
	email: "alana@gmail.com",
	home_phone: "900-606-2987",
	cell_phone: "800-909-6543",
	street_address_1: "9876 West 9th st", 
	street_address_2: "9th floor",
	city: "Miami",
	state: "FL",
	zip: 10036,
	country: "United States", 
	birthdate: "",
	gender: "female", 
	school: "Hendersonville High School",
	additional_info: ""
	)

student_nyc = Application.create(
	application_name: "Student NYC",
	application_type: "student",
	application_location: "NYC"
	)

student_miami = Application.create(
	application_name: "Student Miami",
	application_type: "student",
	application_location: "Miami"
	)

student_dc = Application.create(
	application_name: "Student DC",
	application_type: "student",
	application_location: "DC"
	)

coderdojo = Partner.create(
	partner_name: "CoderDojo"
	)

girlswhocode = Partner.create(
	partner_name: "Girls Who Code"
	)

cisco = Sponsor.create(
	sponsor_name: "Cisco"
	)

ibm = Sponsor.create(
	sponsor_name: "IBM"
	)

yvonne = User.create(
	first_name: "Yvonne",
	last_name: "De La Pena",
	type: "admin"
	)

justin = User.create(
	first_name: "Justin",
	last_name: "Hudson",
	type: "staff"
	)

buzzfeed = WorkshopLocation.create(
	location_name: "Buzzfeed",
	street_address: "200 5th ave",
	street_address_2: "8th floor",
	city: "New York",
	state: "NY",
	zip: ""
	)

nyc_june_2015 = Workshop.create(
	workshop_date: ""
	)

sample_app_question1 = ApplicationQuestion.create(
	question: "List all technology classes you have taken or are currently taking:",
	question_type: "textbox",
	num_options: 0,
	question_options: ""
	)

sample_app_question2 = ApplicationQuestion.create(
	question: "Have you used any of the following programming languages?",
	question_type: "checkbox",
	num_options: 11,
	question_options: "CSS; HTML/HTML5; Javascript; Ruby; Python; PHP; Java; C/C++/C#/Objective C; Swift; None; Other"
	)





# Form (for application id = 4)
# -----


# 1.
# ..
# ..
# 10.

# addl info
# ---------
# # get all appilcation_questions from application_questions table where application_id = 4
# # for each one we should have [type], [prompt], [choices]
# # for each one we build the question in the form
# # everything below "addl info" is saved as JSON string on student under the column "additional_info"

























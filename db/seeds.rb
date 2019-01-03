# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
	Topic.create!(
		title:"Topic #{topic}"
		)
	end

	puts '3 topics'
10.times do |blog|
	Blog.create!(
		title:"My Blog Post #{blog}",
		body:'sdfjahsjdfnald sdkfja  dfaldsj dhfjad hlah l asjdfha lh hfaushdfauh  sfdhauldh ',
		topic_id:Topic.last.id)
end

puts '10 blog posts created'

5.times do |skill|
	Skill.create!(
			title:"My skill #{skill}",
			percent_utilized: 14
		)
end

puts '5 skills created'


8.times do |por|
	Porfolio.create!(
		title:"Portfolio title #{por}",
		subtitle:"Ruby on rails",
		body: "skfjalks a sdlfkaj ajdsfl aj f jaslfalsdjfakjd l ad fadhf a fhaldjhfla d dfhaldjsfhal af alsdhf  ldsf al f aslf al fhal ",
		main_image:"http://placehold.it/500",
		thumb_image:"http://placehold.it/300"
	)
end
1.times do |por|
	Porfolio.create!(
		title:"Portfolio title #{por}",
		subtitle:"angular",
		body: "skfjalks a sdlfkaj ajdsfl aj f jaslfalsdjfakjd l ad fadhf a fhaldjhfla d dfhaldjsfhal af alsdhf  ldsf al f aslf al fhal ",
		main_image:"http://placehold.it/500",
		thumb_image:"http://placehold.it/300"
	)
end

3.times do |technology|
	Technology.create!(
			name:'Technology #{technology}',
			porfolio_id:Porfolio.last.id
		)
end
puts "3 technologies created"
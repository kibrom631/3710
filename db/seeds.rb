# create 10 prefixes and 10 courses for each prefix
10.times do |i|
  prefix = Prefix.create(prefix: "prefix#{i}")
  Course.create(prefix: prefix, number: i, name: Faker::Educator.course_name)
end

# create 10 students
10.times do |i|
  Student.create(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 email: Faker::Internet.email,
                 physical_address: Faker::Address.full_address,
                 phone_number: Faker::PhoneNumber.cell_phone)

end

# create 10 semesters
10.times do |i|
  Semester.create(semester: Semester.semesters.keys.sample,
                  year: Faker::Number.between(from: 2000, to: 2023))
end

# create 10 sections
10.times do |i|
  section = Section.create(CRN: Faker::Number.number(digits: 5),
                 course: Course.all.sample,
                 semester: Semester.all.sample)
  # add 1 to 5 students to each section
  rand(1..5).times do
    section.students << Student.all.sample
  end
end

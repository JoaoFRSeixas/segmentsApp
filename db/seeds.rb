# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Segment.create(name: 'Segment 1')
Segment.create(name: 'Segment 2')
Segment.create(name: 'Segment 3')

Tag.create(name: 'Tag 1')
Tag.create(name: 'Tag 2')
Tag.create(name: 'Tag 3')

User.create(
  first_name: 'John',
  last_name: 'Doe',
  email: 'john@example.com',
  birth_date: Date.new(1990, 1, 1),
  admission_date: Date.new(2020, 1, 1),
  is_active: true,
  sex: 'Male',
  last_sign_in_at: DateTime.now
)

User.create(
  first_name: 'Jane',
  last_name: 'Smith',
  email: 'jane@example.com',
  birth_date: Date.new(1995, 2, 15),
  admission_date: Date.new(2021, 3, 10),
  is_active: true,
  sex: 'Female',
  last_sign_in_at: DateTime.now
)

UserSegments.create(user_id: 1, segments_id: 1)
UserSegments.create(user_id: 1, segments_id: 2)
UserSegments.create(user_id: 2, segments_id: 3)


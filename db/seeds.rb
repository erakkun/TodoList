# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TaskType.create(title: 'Untouched')
TaskType.create(title: 'Doing')
TaskType.create(title: 'Waiting for check')
TaskType.create(title: 'Completed')

Task.create(title: 'This one task', task_type_id: 1)
Task.create(title: 'This other task', task_type_id: 2)

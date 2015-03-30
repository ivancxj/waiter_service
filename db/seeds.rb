# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

waiter_id = 'waiter_id_1'
opt = {}
opt[:waiter_id] = waiter_id
opt[:service_quality] = 100
opt[:service_orders_count] = 10
opt[:comments_good_count] = 80
opt[:comments_bad_count] = 10
opt[:experience] = 80
opt[:beans_count] = 790
opt[:work_from] = 123123100
opt[:work_to] = 123123123
opt[:work_status] = 1
waiter = Waiter.new(opt)
waiter.save


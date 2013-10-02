# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Indicators

Indicator.delete_all
Matrix.delete_all
Value.delete_all
IndicatorValue.delete_all
Stakeholder.delete_all
IndicatorStakeholder.delete_all
Company.delete_all
Report.delete_all
Chapter.delete_all
Solution.delete_all
User.delete_all
Rating.delete_all
UserRating.delete_all

seed_file = File.join(Rails.root, 'db', 'seed.yml')
seeds = YAML::load_file(seed_file)
Indicator.create(seeds["indicators"])
Matrix.create(seeds["matrices"])
Value.create(seeds["values"])
IndicatorValue.create(seeds["indicator_values"])
Stakeholder.create(seeds["stakeholders"])
IndicatorStakeholder.create(seeds["indicator_stakeholders"])
Company.create(seeds["companies"])
Report.create(seeds["reports"])
Chapter.create(seeds["chapters"])
Solution.create(seeds["solutions"])
User.create(seeds["users"])
Rating.create(seeds["ratings"])
UserRating.create(seeds['user_ratings'])

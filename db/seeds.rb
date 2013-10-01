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

seed_file = File.join(Rails.root, 'db', 'seed.yml')
config = YAML::load_file(seed_file)
Indicator.create(config["indicators"])
Matrix.create(config["matrices"])
Value.create(config["values"])
IndicatorValue.create(config["indicator_values"])
Stakeholder.create(config["stakeholders"])
IndicatorStakeholder.create(config["indicator_stakeholders"])
Company.create(config["companies"])
Report.create(config["reports"])
Chapter.create(config["chapters"])
Solution.create(config["solutions"])

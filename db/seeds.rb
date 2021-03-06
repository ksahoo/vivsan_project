# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Currency.create(name: 'Euros') if Currency.where(name: 'Euros').first.nil?
Currency.create(name: 'Dollars') if Currency.where(name: 'Dollars').first.nil?
Currency.create(name: 'Yens') if Currency.where(name: 'Yens').first.nil?
Currency.create(name: 'Dinars') if Currency.where(name: 'Dinars').first.nil?
Currency.create(name: 'Pounds') if Currency.where(name: 'Pounds').first.nil?

AnalysisGroup.create(name: 'Urin') if AnalysisGroup.where(name: 'Urin').first.nil?
AnalysisGroup.create(name: 'Blood') if AnalysisGroup.where(name: 'Blood').first.nil?
AnalysisGroup.create(name: 'Skin') if AnalysisGroup.where(name: 'Skin').first.nil?
AnalysisGroup.create(name: 'Faeces') if AnalysisGroup.where(name: 'Faeces').first.nil?
AnalysisGroup.create(name: 'Food intake') if AnalysisGroup.where(name: 'Food intake').first.nil?
AnalysisGroup.create(name: 'Breath') if AnalysisGroup.where(name: 'Breath').first.nil?
AnalysisGroup.create(name: 'Activity') if AnalysisGroup.where(name: 'Activity').first.nil?
AnalysisGroup.create(name: 'Sleep') if AnalysisGroup.where(name: 'Sleep').first.nil?
AnalysisGroup.create(name: 'Others') if AnalysisGroup.where(name: 'Others').first.nil?

TypeOfMethod.create(name: 'Non-invasive') if TypeOfMethod.where(name: 'Non-invasive').first.nil?
TypeOfMethod.create(name: 'Minimally-invasive') if TypeOfMethod.where(name: 'Minimally-invasive').first.nil?
TypeOfMethod.create(name: 'Invasive') if TypeOfMethod.where(name: 'Invasive').first.nil?

QualifyAreasOfInterest.create(name: 'Dietary assessment') if QualifyAreasOfInterest.where(name: 'Dietary assessment').first.nil?
QualifyAreasOfInterest.create(name: 'health status') if QualifyAreasOfInterest.where(name: 'health status').first.nil?
QualifyAreasOfInterest.create(name: 'Physical activity') if QualifyAreasOfInterest.where(name: 'Physical activity').first.nil?
QualifyAreasOfInterest.create(name: 'Fitness performance & genotype') if QualifyAreasOfInterest.where(name: 'Fitness performance & genotype').first.nil?

Field2UsefulForWhich.create(name: 'NONE') if Field2UsefulForWhich.where(name: 'NONE').first.nil?
Field2UsefulForWhich.create(name: 'Obese children') if Field2UsefulForWhich.where(name: 'Obese children').first.nil?
Field2UsefulForWhich.create(name: 'Children w. eating disorders') if Field2UsefulForWhich.where(name: 'Children w. eating disorders').first.nil?
Field2UsefulForWhich.create(name: 'Diabetic adults') if Field2UsefulForWhich.where(name: 'Diabetic adults').first.nil?
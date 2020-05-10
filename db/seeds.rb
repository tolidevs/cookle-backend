require 'faker'


# ----creating users tags randomly -------- 

# 10.times do
#     User.create(email: Faker::Internet.email, password: 'password')
# end

# # create preferences
# p1 = Preference.create(allergy_or_diet: "allergy", name: "dairy")
# p2 = Preference.create(allergy_or_diet: "allergy", name: "egg")
# p3 = Preference.create(allergy_or_diet: "allergy", name: "gluten")
# p4 = Preference.create(allergy_or_diet: "allergy", name: "grain")
# p5 = Preference.create(allergy_or_diet: "allergy", name: "peanut")
# p6 = Preference.create(allergy_or_diet: "allergy", name: "seafood")
# p7 = Preference.create(allergy_or_diet: "allergy", name: "sesame")
# p8 = Preference.create(allergy_or_diet: "allergy", name: "shellfish")
# p9 = Preference.create(allergy_or_diet: "allergy", name: "soy")
# p10 = Preference.create(allergy_or_diet: "allergy", name: "sulfite")
# p11 = Preference.create(allergy_or_diet: "allergy", name: "nut")
# p12 = Preference.create(allergy_or_diet: "allergy", name: "wheat")

# p13 = Preference.create(allergy_or_diet: "diet", name:"vegan")
# p14 = Preference.create(allergy_or_diet: "diet", name:"vegetarian")
# p15 = Preference.create(allergy_or_diet: "diet", name:"pescatarian")
# p16 = Preference.create(allergy_or_diet: "diet", name:"ketogenic")
# p17 = Preference.create(allergy_or_diet: "diet", name:"paleo")

# # create preference tags

# 30.times do
#     UserPreference.create(user: User.all.sample, preference: Preference.all.sample)
# end


# create saved Recipes

10.times do
    SavedRecipe.create(user: User.all.sample, recipe_id: "628120")
end
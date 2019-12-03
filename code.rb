people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}


# Write Ruby code to find out the answers to the following questions:

# * How many people are in `people` (excluding children)?
people_count = 0
people.each do |person|
  people_count += 1
end
puts people_count

# * What are the names of all the people?
people.each do |person|
  puts person[0]
end
# * What is the phone number of Alia O'Conner PhD?
puts people["Alia O'Conner PhD"]["phone"]
# * How many children does Brian Heller have?
brian_heller_children_count = 0
people.each do |person|
  if person[0] === "Brian Heller"
    brian_heller_children_count += 1
  end
end
puts brian_heller_children_count
# * What company does Dr. Adela DuBuque work for?
puts people["Dr. Adela DuBuque"]["company"]
# * What are the names of the people who have children?
has_children = people.select{|person, value| value["children"] != nil}
has_children.each do |person|
  puts person[0]
end
# * What are the names of the people who do not have children?
no_children = people.select{|person, value| value["children"] === nil}
no_children.each do |person|
  puts person[0]
end
# * What is Brian Heller's child's name?
puts people["Brian Heller"]["children"]
# * What is Maryse Johns' first child's name?
puts people["Maryse Johns"]["children"][0]
# * Dr. Adela DuBuque just had a baby named Tomas. How would you update the hash for this information?
people["Dr. Adela DuBuque"]["children"] = "Tomas"
puts people["Dr. Adela DuBuque"]["children"]

sets_of_people =
[
  {
         "Bernard Feil" => {
             "phone" => "(880) 434-0630",
           "company" => "Maggio Inc",
          "children" => [
              "Nikki"
          ]
      },
          "Ruby Hessel" => {
             "phone" => "1-467-852-4981",
           "company" => "Kemmer Inc",
          "children" => [
              "Sydney"
          ]
      },
          "Savanah Toy" => {
             "phone" => "440-632-0287",
           "company" => "Hudson, Stehr and Lind",
          "children" => [
              "Garth"
          ]
      },
      "Casandra Kemmer" => {
            "phone" => "1-515-759-7470",
          "company" => "Davis, Bernier and Hermann"
      },
             "Edd Rath" => {
            "phone" => "(522) 829-3164",
          "company" => "Mosciski LLC"
      }
  },
  {
         "Dagmar Brakus" => {
             "phone" => "1-881-313-1173",
           "company" => "Mitchell, Schmitt and Haley",
          "children" => [
              "Reuben"
          ]
      },
         "Einar Effertz" => {
            "phone" => "(265) 857-5141",
          "company" => "Pfeffer, Klocko and Von"
      },
      "Dr. Sigrid Nader" => {
             "phone" => "707.762.7870",
           "company" => "Weissnat, Hayes and Dickinson",
          "children" => [
              "Israel",
              "Elyse",
              "Wilfredo"
          ]
      }
  }
]

# Write Ruby code to find out the answers to the following questions:

# * How many people are in the first set of people?
first_set_count = 0
sets_of_people[0].each do |people|
  first_set_count += 1
end
puts first_set_count
# * How many people are in the second set of people?
second_set_count = 0
sets_of_people[1].each do |people|
  second_set_count += 1
end
puts second_set_count
# * What is Ruby Hessel's phone number?
puts sets_of_people[0]["Ruby Hessel"]["phone"]
# * What are the names of Dr. Sigrid Nader's children?
puts sets_of_people[1]["Dr. Sigrid Nader"]["children"]
# * What is Bernard Feil's child's name?
puts sets_of_people[0]["Bernard Feil"]["children"]
# * What company does Casandra Kemmer work for?
puts sets_of_people[0]["Casandra Kemmer"]["company"]
# * Who are all the people in the first set that have an `m` in their Company names?
m_list = sets_of_people[0].select{|person, value| value["company"].include?("m") || value["company"].include?("M")}
m_list.each do |person|
  puts person[0]
end

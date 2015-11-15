open_text     = OpenTextQuestion.find_or_create_by!(title: 'Question 1', content: 'What do you think about Ruby?')
multi_choice  = MultiChoiceQuestion.find_or_create_by!(title: 'Question 2', content: 'What other says:')
scale         = ScaleQuestion.find_or_create_by!(title: 'Question 3', content: 'On a scale of 0 to 100, how much time you spend on Javascript?')

[ "Ruby", "Python", "PHP", "Java" ].each do |skill|
  Choice.find_or_create_by!(title: skill, question: multi_choice)
end

5.times do |n|
  note = Note.create!(
  :title => Faker::Lorem.words(4),
  :body  =>  Faker::Lorem.sentences(2)
  )
  3.times do |n|
    tag = Tag.create!(
    :name => Faker::Lorem.word
    )
  end
end

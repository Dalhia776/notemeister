
5.times do |n|
  note = Note.create!(
  :title => Faker::Lorem.sentence,
  :body  => Faker::Lorem.sentence(3)
  )
    3.times do
      tag = Tag.create!(:name => Faker::Lorem.word)
      note.all_tags << tag

    end

end

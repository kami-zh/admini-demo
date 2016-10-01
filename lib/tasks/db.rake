namespace :db do
  desc 'Populate db with sample data'
  task populate: :environment do
    100.times do
      Post.create(
        title: Faker::Book.title,
        content: Faker::Lorem.paragraph,
        status: [0, 10].sample,
        preview_token: SecureRandom.hex
      )
    end
  end
end

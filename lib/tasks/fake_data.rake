namespace :fake_data do
  # rake fake_data:create
  desc 'create fake data'
  task create: :environment do
    10.times do |i|
      u = User.new(
        login: FFaker::Internet.email,
        name:  FFaker::Name.name
      )

      u.save!
      puts "U"

      10.times do |i|
        c = u.comments.new(
          contacts: FFaker::Internet.email,
          content:  FFaker::Lorem.sentences(5).join
        )

        c.save!
        print 'C.'
      end

      puts
    end
  end
end

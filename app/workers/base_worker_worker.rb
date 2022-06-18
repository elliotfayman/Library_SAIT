class HardJob
    include Sidekiq::Worker
  
    def perform(*args)
      user_space = User.all
      user_space.each do |u|
        book_space = u.books
        if !book_space.empty?
          book_space.each do |b|
            if b.checkindate.to_time.to_i <= Time.now.to_i
              b.checked_out = false
              u.books.delete(b)
              b.save
              u.save
            end
          end
        end
      end
    end
  end
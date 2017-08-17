namespace :utils do

  desc "add_bird_to_photos"
  task add_bird_to_photos: :environment do

    DiaryPhoto.all.each do |photo|

      if photo.bird == nil
        diaryItem = DiaryItem.where(:id => photo.diary_item.id).first
        bird = Bird.where(:id => diaryItem.bird.id).first
        photo.update_attribute(:bird,bird)
      end


    end

  end


end

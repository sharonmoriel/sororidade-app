class Episode < ApplicationRecord
  mount_uploader :video, VideoUploader
end

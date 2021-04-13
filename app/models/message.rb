class Message < ApplicationRecord
  after_create_commit { broadcast_append_later_to "thing", target: "message-container", partial: "messages/message" }

  validates :content, presence: true

end

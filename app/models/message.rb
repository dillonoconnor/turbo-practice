class Message < ApplicationRecord
  after_create_commit { broadcast_append_later_to "thing", target: "message-container", partial: "messages/message" }
  after_update_commit { broadcast_replace_later_to "thing" }
  after_destroy_commit { broadcast_remove_to "thing" }

  validates :content, presence: true

end

class SiteController < ApplicationController
  before_action :authenticate_user!
  def index
    # retrieve all Text Memories ordered by descending creation timestamp
    @text_memories = current_user.text_memories.order('created_at desc')
  end
end

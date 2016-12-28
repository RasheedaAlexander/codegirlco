class Post < ActiveRecord::Base
	extend FriendlyId
  friendly_id :title, use: :slugged
  def should_generate_new_friedly_id?
     slug.nil? || title_changed?
  end﻿
end

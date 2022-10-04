# frozen_string_literal: true

module ApplicationHelper
  def show_bg_image(image)
    show_image = image_url('empty_icon.png')
    show_image = image if image != ''
    show_image
  end
end

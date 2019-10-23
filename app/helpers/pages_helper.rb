module PagesHelper
  def render_slide(slide, &block)
    data = {}
    data.merge!("background-image": slide.image.url) if slide.image
    data.merge!("background-video": slide.video.url) if slide.video
    content_tag :section, data: data do
      yield
    end
  end
end

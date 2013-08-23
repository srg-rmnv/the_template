$ ->
  slide_width = $(".slider ul li").width()
  container = $(".slider ul")
  in_progress = false
  $(".fwd").click ->
    if not in_progress
      first_slide = $(".slider ul li").first()
      in_progress = true
      container.animate {"left":"-="+slide_width+"px"}, 600, ->       
        container.hide()
      container.animate {"left":"+=800px"}, 0, ->
        container.append(first_slide)
        container.show()
        in_progress = false
  $(".bck").click ->
    if not in_progress
      last_slide = $(".slider ul li").last()
      container.prepend(last_slide)
      container.css {"left":"-800px"}
      in_progress = true
      container.animate {"left":"+=800px"}, 600, ->
        in_progress = false

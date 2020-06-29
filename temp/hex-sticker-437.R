library(hexSticker)


library(showtext)
## Loading Google fonts (http://www.google.com/fonts)
font_add_google("Roboto Condensed", "roboto")
## Automatically use showtext to render text for future devices
showtext_auto()


mao = png::readPNG('temp/mexico.png')

mao = grid::rasterGrob(mao, interpolate = TRUE)

sticker(mao, package = "ladata",
        p_size = 8,
        p_y = .45, p_color = "#482475", p_family = "roboto",
        s_x = 1, s_y = 1.2, white_around_sticker = TRUE,
        s_width = 3, s_height = 1.8,spotlight = FALSE,
        h_fill = "white",h_color = "#482475",
        filename = file.path("temp/ladata-hex.png"))

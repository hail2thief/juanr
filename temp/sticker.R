## load libraries
library(ggplot2)
library(hrbrthemes)
library(hexSticker)
library(viridis)
library(scales)
library(showtext)


## Loading Google fonts (http://www.google.com/fonts)
font_add_google("Fira Sans")
## Automatically use showtext to render text for future devices
showtext_auto()



# dubois
library(cowplot)

ggdraw() +
  draw_image(
    "/Users/juan/Dropbox/personal/Website pics/IMG_2255.jpg",
    scale = 1,
    y = .1
  ) -> p


sticker(p, package="juanr",h_fill = 'white',h_color = 'black',
        p_size=8, s_x=1.1, s_y=.7, s_width=2.2, s_height=2.2,
        p_x = 1, p_y = 1.5,
        p_family = "Fira Sans", p_color = 'white', dpi = 500,
        white_around_sticker = TRUE,
        filename = 'temp/sticker.png')

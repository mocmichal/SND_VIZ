# ===== Default : Default
# ===== Default : Default
@v1 ||= 0
@v2 ||= 0
@v3 ||= 0
@v4 ||= 0
@ka1 ||= 0

set_range :@v1, 0, 255
set_range :@v2, 0, 255
set_range :@v3, 0, 255
set_range :@v4, 0, 255

def draw
  no_stroke
  
  @v1 = (b1.velocity - 30) * 3 if b1.on
  @v2 = (b2.velocity - 30) * 3 if b2.on
  @v3 = (b3.velocity - 30) * 3 if b3.on
  @v4 = (b4.velocity - 30) * 3 if b4.on
  
  fill @v1
  rect 0+ka1, 0+ka1, 200, height
  
  fill @v2
  rect 200+ka1, 0+ka1, 200, height
  
  fill @v3
  rect 400+ka1, 0+ka1, 200, height
  
  fill @v4
  rect 600+ka1, 0+ka1, 200, height
  
  @v1 *= 0.9
  @v2 *= 0.9
  @v3 *= 0.9
  @v4 *= 0.9
end





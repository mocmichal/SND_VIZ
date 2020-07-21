# ===== Default : Default
@ka0 ||= 0
@ka1 ||= 0
@ka2 ||= 0
@ka3 ||= 0

@ka4 ||= 0
@ka5 ||= 0
@ka6 ||= 0

@ka8 ||= 0
@ka9 ||= 0


def draw
  background 255,255,255

  lights

  translate width / 2 + ka8*8, height / 2 + ka9*-8, 0
  @speed = 0.002
  #print frameCount * ka0*@speed
  rotate_x (frameCount * ka0*@speed )
  rotate_y frameCount * ka1*@speed
  rotate_z frameCount * ka2*@speed

  stroke 0,0,0
  #print (@ka4+50)*2.5,(@ka5+50)*2.5, (@ka6+50)*2.5
  fill ((ka4+50)*2.5),((ka5+50)*2.5), ((ka6+50)*2.5)
  #fill 255,255,255
  
  @size=10
  box ka3*@size
end


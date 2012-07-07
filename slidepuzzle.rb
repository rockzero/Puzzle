require 'green_shoes'

imagedir = '../../../../../../../../../home/rei/image/'
Shoes.app do
  @image1 = image File.join(DIR,imagedir + 'image01.png')
  @image2 = image File.join(DIR,imagedir + 'image02.png')
  @image3 = image File.join(DIR,imagedir + 'image03.png')
  @image4 = image File.join(DIR,imagedir + 'image04.png')
  @image5 = image File.join(DIR,imagedir + 'image05.png')
  @image6 = image File.join(DIR,imagedir + 'image06.png')
  @image7 = image File.join(DIR,imagedir + 'image07.png')
  @image8 = image File.join(DIR,imagedir + 'image08.png')
  @image9 = image File.join(DIR,imagedir + 'image09.png')
  @image10 = image File.join(DIR,imagedir + 'image10.png')
  @image11 = image File.join(DIR,imagedir + 'image11.png')
  @image12 = image File.join(DIR,imagedir + 'image12.png')
  @image13 = image File.join(DIR,imagedir + 'image13.png')
  @image14 = image File.join(DIR,imagedir + 'image14.png')
  @image15 = image File.join(DIR,imagedir + 'image15.png')
  @image16 = image File.join(DIR,imagedir + 'image16.png')
  stroke black
  haba = @image1.width
  x1 = 0
  x2 = haba
  x3 = haba * 2
  x4 = haba * 3
  x5 = haba * 4
  takasa = @image1.height
  y1 = 0
  y2 = takasa
  y3 = takasa * 2
  y4 = takasa * 3
  y5 = takasa * 4
  line(x2,y1,x2,y5)
  line(x3,y1,x3,y5)
  line(x4,y1,x4,y5)
  line(x1,y2,x5,y2)
  line(x1,y3,x5,y3)
  line(x1,y4,x5,y4)
  line(1,1,1,y5)
  line(x5,1,x5,y5)  
  line(1,1,x5,1)  
  line(1,y5,x5,y5)

  @image2.move(x2,0)
  @image3.move(x3,0)
  @image4.move(x4,0)
  @image6.move(x2,y2)
  @image7.move(x3,y2)
  @image8.move(x4,y2)
  @image10.move(x2,y3)
  @image11.move(x3,y3)
  @image12.move(x4,y3)
  @image14.move(x2,y4)
  @image15.move(x3,y4)
  @image16.move(x4,y4)
  @image5.move(x1,y2)
  @image9.move(x1,y3)
  @image13.move(x1,y4)

end


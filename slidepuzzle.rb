require 'green_shoes'

imagedir = '../images/'
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
#  @image16 = image File.join(DIR,imagedir + 'imageblack.png')
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

  @image1.move(x1, y1)
  @image16.move(x2,0)
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
  @image2.move(x4,y4)
  @image5.move(x1,y2)
  @image9.move(x1,y3)
  @image13.move(x1,y4)
  
  spacex,spacey = x2, y1
  #spacex,spacey = x4, y4
  
  @images = [
    @image1, 
    @image2,
    @image3,
    @image4,
    @image5,
    @image6,
    @image7,
    @image8,
    @image9,
    @image10,
    @image11,
    @image12,
    @image13,
    @image14,
    @image15,
    @image16,
  ]
  
  click {|b,l,t| 
    p "clicked #{b},#{l},#{t}"    
#    if  ((l == 200 ... 300) && (t == 300 ... 400)) || (l == x4 && t == y3)
   if (0 ... 100).cover?(l) && (0 ... 100).cover?(t) #1
     if (spacex == 100 && spacey == 0)
       # 右隣
       image = @images.find { |i|
         i.left == 0 && i.top == 0
       }
       image.move(100, 0)
       @image16.move(0, 0)
       spacex, spacey = 0,0
     elsif (spacey == 100 && spacex == 0)
       # 下隣 
       image = @images.find { |i|
         i.left == 0 && i.top == 0
       }
       image.move(0, 100)
       @image16.move(0, 0)
       spacex, spacey = 0,0
     else
       # どちらでもない
     end
   end
   if (0 ... 100).cover?(t) && (100 ... 200).cover?(l) #2
     if (spacey == 0 && spacex == 200)
     # 右隣
       image = @images.find { |i|
         i.left == 100 && i.top == 0
       }
       image.move(200, 0)
       @image16.move(100, 0)
       spacex, spacey = 100,0
     elsif (spacey == 0 && spacex == 0)      
      # 左隣
       image = @images.find { |i|
         i.left == 100 && i.top == 0
       }
       image.move(0, 0)
       @image16.move(100, 0)
       spacex, spacey = 100,0
     elsif (spacey == 100 && spacex == 100)
            # 下隣
       image = @images.find { |i|
         i.left == 100 && i.top == 0
       }
       image.move(100, 100)
       @image16.move(100, 0)
       spacex,spacey = x2,0
       end
   end

   if (0 ... 100).cover?(t) && (200 ... 300).cover?(l) #3
     if (spacey == 0 && spacex == 100)
            # 左隣
       image = @images.find { |i|
         i.left == 200 && i.top == 0
       }
       image.move(100, 0)
       @image16.move(200, 0)
       spacex, spacey = 200,0
 
     elsif (spacey == 0 && spacex == 300)
           # 右隣
       image = @images.find { |i|
         i.left == 200 && i.top == 0
       }
       image.move(300, 0)
       @image16.move(200, 0)
       spacex,spacey = 200,0

     elsif (spacey == 100 && spacex == 200)
                  # 下隣
       image = @images.find { |i|
         i.left == 200 && i.top == 0
       }
       image.move(0, 300)
       @image16.move(0, 200)
       spacex,spacey = 200,0
       end
   end

   if (0 ... 100).cover?(t) && (300 ... 400).cover?(l) #4
     if (spacey == 0 && spacex == 200) 
                # 左隣
       image = @images.find { |i|
         i.left == 300 && i.top == 0
       }
       image.move(200, 0)
       @image16.move(300, 0)
       spacex,spacey = 300,0
     elsif (spacey == 100 && spacex == 300)
           # 下隣
       image = @images.find { |i|
         i.left == 300 && i.top == 0
       }
       image.move(100, 300)
       @image16.move(0, 300)
       spacex,spacey = 0,300
       end
   end

   if (100 ... 200).cover?(t) && (0 ... 100).cover?(l) #5
     if (spacey == 0 && spacex == 0) 
                # 上隣
       image = @images.find { |i|
         i.left == 0 && i.top == 100
       }
       image.move(0, 0)
       @image16.move(0, 100)
       spacex,spacey = 0,100
     elsif (spacex == 100 && spacey == 100)
                  # 右隣
       image = @images.find { |i|
         i.left == 0 && i.top == 100
       }
       image.move(100, 100)
       @image16.move(0, 100)
       spacex,spacey = 0,100
     end
     elsif (spacex  == 0 && spacey == 200)
                # 下隣
       image = @images.find { |i|
         i.left == 0 && i.top == 200
       }
       image.move(0, 300)
       @image16.move(0, 200)
       spacex,spacey = 0,100
   end

   if (100 ... 200).cover?(t) && (100 ... 200).cover?(l) #6
     if (spacex == 200 && spacey == 100)
                  # 右隣
       image = @images.find { |i|
         i.left == 100 && i.top == 100
       }
       image.move(200, 100)
       @image16.move(100, 100)
       spacex,spacey = 100,100
     elsif (spacex == 0 && spacey == 100)
                  # 左隣
       image = @images.find { |i|
         i.left == 100 && i.top == 100
       }
       image.move(0, 100)
       @image16.move(100, 100)
       spacex,spacey = 100,100
     elsif (spacex == 100 && spacey == 0)
                  # 上隣
       image = @images.find { |i|
         i.left == 100 && i.top == 100
       }
       image.move(100, 0)
       @image16.move(100, 100)
       spacex,spacey = 100,100
     elsif (spacex == 100 && spacey == 200)
                  # 下隣
       image = @images.find { |i|
         i.left == 100 && i.top == 100
       }
       image.move(100, 200)
       @image16.move(100, 100)
       spacex,spacey = 100,100
     end

   end
=begin

   if (100 ... 200).cover?(t) && (200 ... 300).cover?(l) #7
     if となりにimage16がある
       交換する
       spacex,spacey = x3,y2
     end
   end

   if (100 ... 200).cover?(t) && (300 ... 400).cover?(l) #8
     if となりにimage16がある
       交換する
       spacex,spacey = x4,y2
     end
   end

   if (200 ... 300).cover?(t) && (0 ... 100).cover?(l) #9
     if となりにimage16がある
       交換する
       spacex,spacey = 0,y3
     end
   end

   if (200 ... 300).cover?(t) && (100 ... 200).cover?(l) #10
     if となりにimage16がある
       交換する
       spacex,spacey = x2,y3
     end
   end

   if (200 ... 300).cover?(t) && (200 ... 300).cover?(l) #11
     if となりにimage16がある
       交換する
       spacex,spacey = x3,y3
     end
   end

   if (200 ... 300).cover?(t) && (300 ... 400).cover?(l) #12
     if となりにimage16がある
       交換する
       spacex,spacey = x4,y3
     end
   end

   if (300 ... 400)cover?(t) && (0 ... 100).cover?(l) #13
     if となりにimage16がある
       交換する
       spacex,spacey = 0,y4
     end
   end

   if (300 ... 400).cover?(t) && (100 ... 200).cover?(l) #14
     if となりにimage16がある
       交換する
       spacex,spacey = x2,y4
     end
   end

   if (300 ... 400).cover?(t) && (200 ... 300).cover?(l) #15
     if となりにimage16がある
       交換する
       spacex,spacey = x3,y4
     end
   end

   if (300 ... 400).cover?(t) && (300 ... 400).cover?(l) #16
     if となりにimage16がある
       交換する
       spacex,spacey = x4,y4
     end
   end
=end

=begin
     || (t >= 201 || t < 300) && (l >= 301 || l < 400)
   if (l >= 201 || l < 300) && (t >= 301 || t < 400)  || (t >= 201 || t < 300) && (l >= 301 || l < 400)
   if (l >= 201 || l < 300) && (t >= 301 || t < 400)  || (t >= 201 || t < 300) && (l >= 301 || l < 400)
   if (l >= 201 || l < 300) && (t >= 301 || t < 400)  || (t >= 201 || t < 300) && (l >= 301 || l < 400)
   if (l >= 201 || l < 300) && (t >= 301 || t < 400)  || (t >= 201 || t < 300) && (l >= 301 || l < 400)
   if (l >= 201 || l < 300) && (t >= 301 || t < 400)  || (t >= 201 || t < 300) && (l >= 301 || l < 400)
   if (l >= 201 || l < 300) && (t >= 301 || t < 400)  || (t >= 201 || t < 300) && (l >= 301 || l < 400)
      @image16.move(x2,0)
      @image2.move(x4,y4)
    end
=end
 }
 p "#{spacex},#{spacey}"

=begin
  @image11.click do
    p "clicked"
     @image11.move(x3,y4)
     @image15.move(x3,y3)
  end
=end
end
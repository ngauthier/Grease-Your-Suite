!SLIDE
# Paperclip
## http://github.com/thoughtbot/paperclip

!SLIDE
# Calls Imagemagick
    @@@ ruby
    Geometry.from_file
    Paperclip.run "identify"

    Thumbnail.make
    Paperclip.run "convert"

    Paperclip.run(command) output = `#{command}`

!SLIDE 
# imagemagick = slow

!SLIDE
# Quickerclip
    @@@ ruby
    Geometry.from_file
    #Paperclip.run "identify"
    return "100x100"

    Thumbnail.make
    #Paperclip.run "convert"
    FileUtils.cp(fixture, destination)

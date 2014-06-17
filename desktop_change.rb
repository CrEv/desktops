#!/usr/bin/env ruby

require 'desktop'

IMAGES = File.join(ENV["HOME"], "Pictures/desktops/2560x1600","*")
new_image = Dir[IMAGES].sort_by{ rand }[0]

Desktop::CLI.start ["set", new_image]


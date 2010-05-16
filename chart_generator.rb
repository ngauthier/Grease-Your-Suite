#!/usr/bin/env ruby
charts = []
vanilla = 795
fast_context = 332
quickerclip = 214
hydra = 86
fs_tweaks = 50
ree = 18

charts << {
  :file => File.join('4-fast-context', 'results.png'),
  :data => [vanilla, fast_context],
  :legend => ['Vanilla', 'Fast Context']
}
charts << {
  :file => File.join('5-quickerclip', 'results.png'),
  :data => [vanilla, fast_context, quickerclip],
  :legend => ['Vanilla', 'Fast Context', 'Quickerclip']
}
charts << {
  :file => File.join('6-hydra', 'results.png'),
  :data => [vanilla, fast_context, quickerclip, hydra],
  :legend => ['Vanilla', 'Fast Context', 'Quickerclip', 'Hydra']
}
charts << {
  :file => File.join('7-fs-tweaks', 'results.png'),
  :data => [vanilla, fast_context, quickerclip, hydra, fs_tweaks],
  :legend => ['Vanilla', 'Fast Context', 'Quickerclip', 'Hydra', 'FS Tweaks']
}
charts << {
  :file => File.join('8-ree', 'results.png'),
  :data => [vanilla, fast_context, quickerclip, hydra, fs_tweaks, ree],
  :legend => ['Vanilla', 'Fast Context', 'Quickerclip', 'Hydra', 'FS Tweaks', 'REE']
}

charts.each do |c|
  url = "http://chart.apis.google.com/chart?"
  options = {
    'cht' => 'bvs',
    'chs' => '700x300',
    'chbh' => '95,5,0',
    'chco' => '64C8CA',
    'chd' => 't:'+c[:data].join(','),
    'chxl' => '0:|'+c[:legend].join('|'),
    'chds' => '0,800',
    'chxt' => 'x'
  }
  url += options.inject(""){|memo, opt| memo + opt[0] + "=" + opt[1] + "&"}
  puts "#{url} => #{c[:file]}"
  puts `wget "#{url}" -O #{c[:file]}`
end

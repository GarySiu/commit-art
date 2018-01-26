require 'date'

START_DATE = Date.parse('Aug 21 2017')

File.open('ascii-art.txt').each_with_index do |line, day_offset|
  line.split('').each_with_index do |commit, week_offset|
    system "git commit --allow-empty --date=\"#{START_DATE + (day_offset + week_offset * 7)}\"" if commit == "#"
  end
end
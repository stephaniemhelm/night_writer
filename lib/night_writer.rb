class NightWriter

  attr_reader   :input_file
                :output_file

  def initialize
    @input_file   = ARGV
    @output_file  = #2nd file???)
  end

end

input_array = ARGV



string = `cat #{input_array[0]} | wc -m`
characters = string.lstrip.chomp!.to_i

puts "Created #{input_array[1]} containing #{characters} characters"


# to run in terminal: ruby lib/night_writer.rb message.txt braille.txt

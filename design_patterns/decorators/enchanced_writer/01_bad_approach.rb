class EnhancedWriter
  attr_reader :check_sum

  def initialize(path)
    relative_path = File.join(File.dirname(__FILE__), path)
    @file = File.open(relative_path, 'w')
    @check_sum = 0
    @line_number = 1
  end

  def write_line(line)
    @file.print(line)
    @file.print("\n")
  end

  def checksumming_write_line(data)
    data.each_byte {|byte| @check_sum = (@check_sum + byte) % 256 }
    @check_sum += "\n"[0] % 256
    write_line(data)
  end

  def timestamping_write_line(data)
    write_line("#{Time.new}: #{data}")
  end

  def numbering_write_line(data)
    write_line("#{@line_number}: #{data}")
    @line_number += 1
  end

  def close
    @file.close
  end
end


writer = EnhancedWriter.new('data/out.txt')
writer.write_line('A plain line')
writer.timestamping_write_line('with time stamp')
writer.numbering_write_line('with line number')

module PTRI
  def self.row(target_row)
    return [1] if target_row == 1
    calculate_row(target_row)
  end

  def self.calculate_row(target_row)
    prev_row, row = [1], []

    2.upto(target_row) do |r|
      row = get_row(prev_row)
      prev_row = row
    end
    
    row
  end

  def self.get_row(prev_row)
    row = []
    prev_row.unshift(0).push(0)
    prev_row.each_index {|i| row << add_elements(prev_row[i], prev_row[i+1]) }
    row.compact 
  end

  def self.add_elements(current_index, next_index)
    current_index + next_index if next_index
  end
end


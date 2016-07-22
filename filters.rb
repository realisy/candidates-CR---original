def find(id)
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    end
  end
  nil
end

def all(candidates)
  candidates.each do |c|
    c
  end
end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def enough_gitpts?(candidate)
  candidate[:github_points] >= 100
end

def required_lang?(candidate)
  candidate[:languages].include?("Ruby") && candidate[:languages].include?("Python")
end

def old_enough?(candidate)
  candidate[:age] > 17
end

def right_appdate?(candidate)
  a = candidate[:date_applied]
  b = Date.today - 15
  a > b
end

def qualified_candidates(candidates)
  candidates.select do |candidate|
    experienced?(candidate)\
    && enough_gitpts?(candidate)\
    && required_lang?(candidate)\
    && old_enough?(candidate)\
    && right_appdate?(candidate)
  end
end

def ordered_by_qualification(candidates)
  candidates.sort_by do |c|
    [-c[:years_of_experience], -c[:github_points]]
  end
end
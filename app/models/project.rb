class Project < ApplicationRecord
  has_many :tasks
  belongs_to :user


def color
    case status
      when 'not-started'
        'primary'
      when 'in-progress'
        'info'
      else 'complete'
        'success'      
    end
  end

def status 

  return 'complete' if ((total_complete.to_f / total_tasks) * 100) == 100

  if tasks.any? { |task| task.complete? || task.in_progress?} 
    'in-progress'
  else
    'not-started'
      
  end
end

def percent_complete

  return 0 if total_tasks == 0

  ((total_complete.to_f / total_tasks) * 100).round(1)
end

def total_complete
  tasks.select { |task| task.complete? }.count
end

def total_tasks
  tasks.count
end



end

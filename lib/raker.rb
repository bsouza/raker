require 'fileutils'

class Raker  

  def clean
    FileUtils.remove_dir 'raker'
  end

end
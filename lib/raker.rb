require 'fileutils'

class Raker

  def initialize(path)
    @path = path
  end

  def clean
    FileUtils.remove_dir "#{@path}/raker"
  end

end
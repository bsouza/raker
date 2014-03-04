require 'fileutils'

class Raker

  def initialize(path = Dir.pwd, with_output = true)
    @path = path
    @with_output = with_output
    validate_dir
  end

  def compile
    goto_rakerdir
    execute_cmake
    execute_make
    goto_default_path
  end

  def test
    goto_rakerdir
    execute_tests
    goto_default_path
  end

  def clear
    system "rm -rf #{@path}/raker"
  end

private 

  def validate_dir
    raise "no raker project" if !is_valid_dir? 
  end

  def is_valid_dir?
    File.exist?("#{@path}/CMakeLists.txt")      
  end

  def goto_rakerdir
    FileUtils.mkdir raker_dir if !Dir.exist?(raker_dir)
    Dir.chdir raker_dir
  end

  def goto_default_path
    Dir.chdir @path    
  end

  def execute_cmake
    system "cmake .. #{show_output}"
  end

  def execute_make
    system "make #{show_output}"
  end

  def execute_tests
    system "./test #{show_output}"
  end

  def show_output
    "1> /dev/null" if !@with_output
  end

  def raker_dir
    "#{@path}/raker"
  end

end
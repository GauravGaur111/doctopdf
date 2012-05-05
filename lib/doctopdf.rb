require 'java'
require 'singleton'

$CLASSPATH << File.expand_path(File.join('..', 'jar','jod','commons-cli-1.1.jar'))
$CLASSPATH << File.expand_path(File.join('..', 'jar','jod','commons-io-1.4.jar'))
$CLASSPATH << File.expand_path(File.join('..', 'jar','jod','jodconverter-core-3.0-beta-4.jar'))
$CLASSPATH << File.expand_path(File.join('..', 'jar','jod','json-20090211.jar'))
$CLASSPATH << File.expand_path(File.join('..', 'jar','jod','juh-3.2.1.jar'))
$CLASSPATH << File.expand_path(File.join('..', 'jar','jod','jurt-3.2.1.jar'))
$CLASSPATH << File.expand_path(File.join('..', 'jar','jod','ridl-3.2.1.jar'))
$CLASSPATH << File.expand_path(File.join('..', 'jar','jod','unoil-3.2.1.jar'))

class Jod
  include Singleton

  def initialize
    oconfiguration = org.artofsolving.jodconverter.office.DefaultOfficeManagerConfiguration.new()
    @officeManager = oconfiguration.buildOfficeManager()
    @officeManager.start()
  end

  def convert_doc(file, output_path)
    converter = org.artofsolving.jodconverter.OfficeDocumentConverter.new(@officeManager)
    converter.convert(java.io.File.new(file), java.io.File.new("#{output_path}/out.pdf"))
  end

  def self.finalize
    @officeManager.stop()
  end

end

class Doctopdf

  def self.convert_to_pdf(input_file,output_path=".")
    Jod.instance.convert_doc(input_file,output_path)
  end

end



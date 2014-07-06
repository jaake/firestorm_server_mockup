class ReportHandler
  
  require 'zip'
  require 'libxml'


  def self.unzip
    zipfiles = []
    uploads = Dir.entries("from_android/")
    uploads.each do |file|
      zipfiles << file if /.zip/.match file
    end
    zipfiles.each do |zipfile|
      Zip::File.open("from_android/#{zipfile}") do |file|
        file.each do |entry|
          puts "Extracting #{entry.name}"
          s_entry = entry.to_s
          entry.extract "from_android/photos/#{entry.name}" if /jpg/.match s_entry
          entry.extract "from_android/reports/#{Time.current.hash}#{entry.name}" if /xml/.match s_entry
        end
      end
    end
  end

  def self.separate
    
    Dir.foreach("from_android/reports/") do |xmlfile|
      next if xmlfile == '.' or xmlfile == '..'
      parser = LibXML::XML::Parser.file("from_android/reports/#{xmlfile}")
      document = parser.parse
      document.find("Report").each do |report|
        report.each { |report| puts "#{report} **"}         

      end
    end  
  end

end

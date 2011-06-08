module Docsplit
  class OfficeUtils
    # Lets check if the user is using LibreOffice
    # If he is using Openoffice,org, jodconverter will take care of things
    def get_office_path
      mac_libre_office_path = "/Applications/LibreOffice.app/Contents"
      linux_libreoffice_path = "/usr/lib/libreoffice"
      if RUBY_PLATFORM.match(/darwin/i)
        if File.exists?(mac_libre_office_path)
          "-Doffice.home=#{mac_libre_office_path}"
        else
          ""
        end
      else
        if File.exists?(linux_libreoffice_path)
          "-Doffice.home=#{linux_libre_office_path}"
        else
          "-Doffice.home=/usr/lib/openoffice"
        end
      end
    end
  end
end
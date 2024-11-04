require "formula"
require_relative "lib/private_strategy"

class ReportGenerator < Formula
  desc "Oneleet Report Generator"
  homepage "https://github.com/oneleet/report-generator"
  version "1.1.0"
  
  if OS.mac?
    url "https://github.com/Oneleet/report-generator/releases/download/v1.1.0/report-generator", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "766dd39bc0af627838ed68d5bd783c7cf7b20ef2747d4abf849b004fabea178f"
  end
  
  def install
    bin.install "report-generator"
  end
  
  test do
    system "#{bin}/report-generator", "--version"
  end
end

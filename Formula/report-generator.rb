require "formula"
require_relative "lib/private_strategy"

class ReportGenerator < Formula
  desc "Oneleet Report Generator"
  homepage "https://github.com/oneleet/report-generator"
  version "v1.1.0"
  
  if OS.mac?
    url "https://github.com/oneleet/report-generator/releases/download/refs/tags/v1.1.0/report-generator", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "${BINARY_SHA256}"
  end
  
  def install
    bin.install "report-generator"
  end
  
  test do
    system "#{bin}/report-generator", "--version"
  end
end

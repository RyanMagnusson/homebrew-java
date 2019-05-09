require "formula"
require_relative "mysql-connector-java"

class MysqlConnectorJavaAT8016 < MysqlConnectorJava
  version "8.0.16"
  sha256 "de7d7f8ce9d777c2a6c7c47695d87bfd635e621f9142467a5e56538fcaf4644a"
  homepage "http://dev.mysql.com/downloads/connector/j/"
  url "http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-#{version}.tar.gz"

  def install
    prefix.install_metafiles
    libexec.install Dir["*.jar"]
    doc.install Dir["docs/*"]
  end
end

require "formula"
require_relative "mysql-connector-java"

class MysqlConnectorJavaAT8011 < Formula
  version "8.0.11"
  sha256 "346ca46f7c2a9a86ef56ca6c3b07b6fbebf59170ee83eef732f7e11c6b012ccd"

  homepage "http://dev.mysql.com/downloads/connector/j/"
  url "http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-#{version}.tar.gz"

  def install
    prefix.install_metafiles
    libexec.install Dir["*.jar"]
    doc.install Dir["docs/*"]
  end

end

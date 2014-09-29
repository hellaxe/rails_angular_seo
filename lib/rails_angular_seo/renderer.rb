require 'phantomjs'

module RailsAngularSeo
  class Renderer

    def self.render(env, seo_id, path_without_port)
      output = ""
      Phantomjs.run(File.expand_path("../../../phantomjs/phantomjs-runner.js", __FILE__), path_without_port, seo_id) {|line| output += line}
      [200, { "Content-Type" => "text/html" }, [output]]
    end
  end
end
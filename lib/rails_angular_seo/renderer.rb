module RailsAngularSeo
  class Renderer

    def self.render(phantomjs_path, seo_id, path_without_port)
      output = ""
      output = IO.popen([phantomjs_path, "--ssl-protocol=any", File.expand_path("../../../phantomjs/phantomjs-runner.js", __FILE__), path_without_port, seo_id]){|phantom_output| output = phantom_output.read}
      [200, { "Content-Type" => "text/html" }, [output]]
    end
  end
end
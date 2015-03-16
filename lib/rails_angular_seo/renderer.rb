module RailsAngularSeo
  class Renderer

    def self.render(phantomjs_path, seo_id, path_without_port, options = {})
      output = ""
      options = {phantomjs_options: []}.merge(options)
      open_options = [phantomjs_path] + options[:phantomjs_options] + [File.expand_path("../../../phantomjs/phantomjs-runner.js", __FILE__), path_without_port, seo_id]
      output = Rails.cache.fetch "#{path_without_port}", expires_in: 1.day do
        IO.popen(open_options){|phantom_output| output = phantom_output.read}
      end
      [200, { "Content-Type" => "text/html" }, [output]]
    end
  end
end
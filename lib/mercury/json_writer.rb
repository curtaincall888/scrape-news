require 'json'

module Mercury
  class JsonWriter
    def initialize(options)
      @outfile = options[:outfile]
    end
    # 4.ファイル書き出し JsonWriter
    def write_file(path, text)
      File.open(path, 'w') { |file| file.write(text) }
    end

    def write(pitnews)
      # 4.ファイル書き出し
      outfile = @outfile || 'pitnews.json'
      write_file(outfile, {pitnews: pitnews}.to_json)
    end
  end
end
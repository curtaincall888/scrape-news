require 'optparse'

module Mercury
  class PreProcessor
    def self.exec(argv)
      # オプションの定義--
      opt = OptionParser.new
      opt.on('--infile=VAL')
      opt.on('--outfile=VAL')
      opt.on('--category=VAL')
      # コマンドラインの解析--
      params = {}
      opt.parse!(argv, into: params)
      # オプションのチェック--
      raise 'Error: --infile と --category は同時に指定できません。' if params[:infile] && params[:category]
      params
    end
  end
end
#!/usr/bin/env ruby
# frozen_string_literal: true

require 'csv'
require 'fileutils'
require 'zlib'

PROJECT_ROOT = File.expand_path('..', __dir__)
SCRIPTS_PATH = File.join(PROJECT_ROOT, 'Data', 'Scripts.rvdata2')
CATALOG_PATH = File.join(__dir__, '脚本目录.csv')
CANDIDATE_ROOT = File.join(__dir__, '候选脚本')

KEYWORDS = [
  'race', 'tribe', 'species', 'job', 'class_id', 'subclass', 'occupation',
  '種族', '職業', 'クラス', '転職', 'ジョブ', 'patch', 'nwpach'
].freeze

def decode_script(entry)
  Zlib::Inflate.inflate(entry[2]).force_encoding(Encoding::UTF_8)
end

def safe_file_name(name)
  sanitized = name.to_s.gsub(/[^0-9A-Za-z._-]+/, '_')
  sanitized.empty? ? 'script' : sanitized[0, 100]
end

scripts = Marshal.load(File.binread(SCRIPTS_PATH))
FileUtils.rm_rf(CANDIDATE_ROOT)
FileUtils.mkdir_p(CANDIDATE_ROOT)

candidate_count = 0
CSV.open(CATALOG_PATH, 'wb', encoding: 'bom|utf-8') do |csv|
  csv << ['脚本ID', '脚本名', '解压后字节数', '命中关键词', '候选文件']

  scripts.each_with_index do |entry, index|
    next unless entry

    script_id, script_name = entry[0], entry[1]
    source = decode_script(entry)
    searchable = [script_name, source].join($/).downcase
    matches = KEYWORDS.select { |keyword| searchable.include?(keyword.downcase) }
    candidate_file = ''

    unless matches.empty?
      candidate_count += 1
      candidate_file = format('%04d_%s.rb', index, safe_file_name(script_name))
      File.binwrite(File.join(CANDIDATE_ROOT, candidate_file), source)
    end

    csv << [index, script_name, source.bytesize, matches.join('; '), candidate_file]
  end
end

puts 'Catalog: ' + CATALOG_PATH
puts 'Candidates: ' + candidate_count.to_s

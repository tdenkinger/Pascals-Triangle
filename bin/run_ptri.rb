#!/usr/bin/env ruby

$LOAD_PATH.unshift( File.expand_path("lib"))

require "ptri"

p PTRI.row(ARGV[0].to_i)

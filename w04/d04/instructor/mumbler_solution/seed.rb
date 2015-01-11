require 'date'
require 'redis'
require_relative 'database_helper'
require_relative 'gravatar_helper'

include Mumbler::DatabaseHelper
include Mumbler::GravatarHelper

flushdb

set_mumble_incrementor(1000)

create_mumble({
  "text"             => "Thinking about time, and what it does to us...",
  "image"            => "http://goo.gl/scTB1I",
  "date"             => "2014-11-03",
  "tags"             => "#thuglife #beauty",
  "author_email"     => "kristin.eugenio@generalassemb.ly",
  "author_handle"    => "eugenius",
  "author_thumbnail" => "http://photos-d.ak.instagram.com/hphotos-ak-xpf1/10554197_777637282292435_572425562_a.jpg",
  "likes"            => 1
})

create_mumble({
  "text"             => "I would rather be hated for who I am, than loved for who I am not.<br/> &mdash; <b>Kurt Cobain</b>",
  "author_email"     => "sweet_dude@yahoo.com"
})

create_mumble({
  "text"             => "Live it up, punks!",
  "image"            => "http://goo.gl/lTLKlK",
  "tags"             => "#yolo",
  "author_email"     => "windthorst@gmail.com"
}.merge(gravatar_author_info("windthorst@gmail.com")))
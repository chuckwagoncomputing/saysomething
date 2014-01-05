#!/usr/bin/ruby
require 'ruby_cowsay'
opt = ARGV[0]
if ARGV[1].nil?
 wisdomQuote = File.readlines("zen.txt").sample.chomp
else
 wisdomQuote = ARGV[1]
end
case opt
when '-a', "--cow"
 puts Cow.new.say(wisdomQuote)
when "-b", "--bunny"
 puts Cow.new({ :cow => 'bunny' }).say(wisdomQuote)
when "--beavis"
 puts Cow.new({ :cow => 'beavis.zen' }).say(wisdomQuote)
when "--cow-bong"
 puts Cow.new({ :cow => 'bong' }).say(wisdomQuote)
when  "-c",  "--cheese"
 puts Cow.new({ :cow => 'cheese' }).say(wisdomQuote)
when  "--cower"
 puts Cow.new({ :cow => 'cower' }).say(wisdomQuote)
when  "--cow-dragon"
 puts Cow.new({ :cow => 'dragon-and-cow' }).say(wisdomQuote)
when  "--cow-small"
 puts Cow.new({ :cow => 'small' }).say(wisdomQuote)
when  "--cow-vader"
 puts Cow.new({ :cow => 'vader' }).say(wisdomQuote)
when  '-d',  "--dino"
 puts Cow.new({ :cow => 'stegosaurus' }).say(wisdomQuote)
when  "--dragon"
 puts Cow.new({ :cow => 'dragon' }).say(wisdomQuote)
when  "--daemon"
 puts Cow.new({ :cow => 'daemon' }).say(wisdomQuote)
when  "-e",  "--elephant"
 puts Cow.new({ :cow => 'elephant' }).say(wisdomQuote)
when  "--elephant-snake"
 puts Cow.new({ :cow => 'elephant-in-snake' }).say(wisdomQuote)
when  "--eyes"
 puts Cow.new({ :cow => 'eyes' }).say(wisdomQuote)
when  "-f",  "--frogs"
 puts Cow.new({ :cow => 'bud-frogs' }).say(wisdomQuote)
when  "-g",  "--ghostbusters"
 puts Cow.new({ :cow => 'ghostbusters' }).say(wisdomQuote)
when  "-h",  "--hellokitty"
 puts Cow.new({ :cow => 'hellokitty' }).say(wisdomQuote)
when  "-k",  "--kitty"
 puts Cow.new({ :cow => 'kitty' }).say(wisdomQuote)
when  "--kiss"
 puts Cow.new({ :cow => 'kiss' }).say(wisdomQuote)
when  "--koala"
 puts Cow.new({ :cow => 'koala' }).say(wisdomQuote)
when  "--koala-luke"
 puts Cow.new({ :cow => 'luke-koala' }).say(wisdomQuote)
when  "--koala-vader"
 puts Cow.new({ :cow => 'vader-koala' }).say(wisdomQuote)
when  "--kosh"
 puts Cow.new({ :cow => 'kosh' }).say(wisdomQuote)
when  "-m",  "--moose"
 puts Cow.new({ :cow => 'moose' }).say(wisdomQuote)
when  "--meow"
 puts Cow.new({ :cow => 'meow' }).say(wisdomQuote)
when  "--milk"
 puts Cow.new({ :cow => 'milk' }).say(wisdomQuote)
when  "--moofasa"
 puts Cow.new({ :cow => 'moofasa' }).say(wisdomQuote)
when  "--mutilated"
 puts Cow.new({ :cow => 'mutilated' }).say(wisdomQuote)
when  '-o',  "--octocat"
 quoteLength = wisdomQuote.length
 print "           MMM.           .MMM\n           MMMMMMMMMMMMMMMMMMM\n           MMMMMMMMMMMMMMMMMMM      _"
 for i in 0..quoteLength - 1
  print "_"
 end
 print "_\n          MMMMMMMMMMMMMMMMMMMMM    | "
 for i in 0..quoteLength
  print " "
 end
 print "|\n         MMMMMMMMMMMMMMMMMMMMMMM   | "
 print wisdomQuote
 print " |\n        MMMMMMMMMMMMMMMMMMMMMMMM   |_   "
 for i in 0..quoteLength - 3
  print "_"
 end
 print "|\n        MMMM::- -:::::::- -::MMMM    |/\n         MM~:~   ~:::::~   ~:~MM\n    .. MMMMM::. .:::+:::. .::MMMMM ..\n          .MM::::: ._. :::::MM.\n             MMMM;:::::;MMMM\n      -MM        MMMMMMM\n      ^  M+     MMMMMMMMM\n          MMMMMMM MM MM MM\n               MM MM MM MM\n               MM MM MM MM\n            .~~MM~MM~MM~MM~~.\n         ~~~~MM:~MM~~~MM~:MM~~~~\n        ~~~~~~==~==~~~==~==~~~~~~\n         ~~~~~~==~==~==~==~~~~~~\n             :~==~==~==~==~~\n"
when  '-p',  "--paranoid"
 puts Cow.new({ :face_type => 'paranoid'}).say(wisdomQuote)
when  "--plain"
 puts wisdomQuote
when  "-r",  "--ren"
 puts Cow.new({ :cow => 'ren' }).say(wisdomQuote)
when  "--stimpy"
 puts Cow.new({ :cow => 'stimpy' }).say(wisdomQuote)
when  "-s",  "--skeleton"
 puts Cow.new({ :cow => 'skeleton' }).say(wisdomQuote)
when  "--satanic"
 puts Cow.new({ :cow => 'satanic' }).say(wisdomQuote)
when  "--surgery"
 puts Cow.new({ :cow => 'surgery' }).say(wisdomQuote)
when  "-t",  "--tux"
 puts Cow.new({ :cow => 'tux' }).say(wisdomQuote)
when  "--turkey"
 puts Cow.new({ :cow => 'turkey' }).say(wisdomQuote)
when  "--turtle"
 puts Cow.new({ :cow => 'turtle' }).say(wisdomQuote)
else
 puts "USAGE: saysomething [OPTIONS] [text]

  --beavis
  -b, --bunny
  -c, --cheese
  -a, --cow
  --cow-bong
  --cow-dragon
  --cow-small
  --cow-vader
  --cower
  --daemon
  -d, --dino
  --dragon
  -e, --elephant
  --elephant-snake
  --eyes
  -f, --frogs
  -g, --ghostbusters
  -h, --hellokitty
  --kiss
  -k, --kitty
  --koala
  --koala-luke
  --koala-vader
  --kosh
  --meow
  --milk
  --moofasa
  -m, --moose
  --mutilated
  -o, --octocat
  -p, --paranoid
  --plain
  -r, --ren
  --satanic
  -s, --skeleton
  --stimpy
  --surgery
  --turkey
  --turtle
  -t, --tux

"
end

while ( !ARGV.empty? )
    case ARGV.shift
    when /^-S$/, /^-S(.*)$/
      server = $1 || ARGV.shift
    when /^-U$/, /^-U(.*)$/
      user = $1 || ARGV.shift
    when /^-P$/, /^-P(.*)$/
      passwd = $1 || ARGV.shift
    when /^-J$/, /^-J(.*)$/
      lang = $1 || ARGV.shift
    when /^-t$/, /^-t(.*)$/
      timeout = $1 || ARGV.shift
      timeout = timeout.to_i
    else
      $stderr.print "usage: ",$0,
   "  [-S server -U user -P passwd -J lang -t timeout-sec]\n"
      exit 1
    end
end

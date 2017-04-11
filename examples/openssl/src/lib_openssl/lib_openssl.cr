@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --libs openssl || printf %s '-lssl -lcrypto'`")]
lib LibOpenSSL
end

require "./sha.cr"
require "./md5.cr"
require "./rand.cr"

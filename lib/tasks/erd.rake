desc 'Generate an entity relationship diagram using erd gem'
namespace :erd do
  task :generate_erd do
    system "erd –-filetype=dot –-direct –-attributes=foreign_keys,content"
  end
end
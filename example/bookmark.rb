require 'winevt'

@query = Win32::Winevt::Query.new("Application", "*[System[(Level <= 3) and TimeCreated[timediff(@SystemTime) <= 86400000]]]")
@bookmark = Win32::Winevt::Bookmark.new
while @query.next do
  xml = @query.render
  @bookmark.update(@query)
end

puts @bookmark.render

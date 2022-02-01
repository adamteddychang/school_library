class ReadData
def read_people
    path = 'data/people.json'
    if File.exist?(path)
      JSON.parse(File.read(path),{object_class: OpenStruct})
    else
    ppljson = []
    File.write(path, JSON.generate(ppljson))
    end
end

def read_books
    path = 'data/books.json'
    if File.exist?(path)
      JSON.parse(File.read(path),{object_class: OpenStruct})
    else
    booksjson = []
    File.write(path, JSON.generate(booksjson))
    end
end
def read_rentals
    path = 'data/rental.json'
    if File.exist?(path)
      JSON.parse(File.read(path),{object_class: OpenStruct})
    else
    rentalsjson = []
    File.write(path, JSON.generate(rentalsjson))
    end
end

end
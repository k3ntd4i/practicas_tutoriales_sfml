SOURCES = main.cpp

OBJECTS = $(SOURCES:.cpp=.o)

EXECUTABLE = main

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	g++ $(OBJECTS) -o $(EXECUTABLE) \
	-L"C:\build-SFML\SFML-2.6.1\lib" \
	-lsfml-graphics-s \
	-lsfml-window-s \
	-lsfml-system-s \
	-lopengl32 \
	-lfreetype \
	-lwinmm \
	-lgdi32 \
	-mwindows

.cpp.o:
	g++ -c $< -o $@ -I"C:\build-SFML\SFML-2.6.1\include" -DSFML_STATIC

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)

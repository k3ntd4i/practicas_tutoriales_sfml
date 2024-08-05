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
	-mwindows \
	-std=c++20

.cpp.o:
	g++ -c $< -o $@ -I"C:\build-SFML\SFML-2.6.1\include" -DSFML_STATIC

clean:
	@if [ -e $(OBJECTS) ]; then rm $(OBJECTS); fi; \
	if [ -e $(EXECUTABLE) ]; then rm $(EXECUTABLE); fi

bin/class_screen: cppfiles/class_screen.cpp headers/screen.h headers/content_screen.cpp
	g++ -Isrc/include -Lsrc/lib -Iheaders/ -o bin/class_screen.exe cppfiles/class_screen.cpp headers/screen.h headers/content_screen.cpp -lmingw32 -lSDL2main -lSDL2
	./bin/class_screen.exe
clean:
	del -fR bin

# I had the same issue. I wasted so much time... and the issue was the wrong order of compiler flag...(your flag are ordered wrong - lSDL2main is at the end, so compiler haven't linked SDL_SetMainReady,SDL_strdup,SDL_issace,SDL_malloc yet and it's trying to use this them linking -lSDL2)
# so make sure You set compiler flag are in right order.
# The order is:
# -lmingw32
# -lSDL2main
# -lSDL2
# -lSDL2_image
# -lSDL2_ttf
# -lSDL2_mixer
# - any other additional library You wish to add
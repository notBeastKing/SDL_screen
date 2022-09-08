#include <screen.h>
#include<iostream>

using namespace std;
using namespace dingus;
//dingus did this
int main(int argc, char *argv[])
{
    screan mmm;
    mmm.createscreen();
    cout<<"hello screen"<<"\n";
    mmm.create_rend_texture();
    cout<<"hello render"<<"\n";
    mmm.setbuffer();
    cout<<"hello buffer"<<"\n";
    mmm.process_events();
    cout<<"hello work pls"<<"\n";

    SDL_Event event;
    bool run = true;

    while(run == true)
    {
        while(SDL_PollEvent(&event))
        {
            if(event.type == SDL_QUIT)
            {
                run = false;
            }
        }
    }
    cout<<"bye event loop"<<"\n";

    mmm.close();

    return 0;
}
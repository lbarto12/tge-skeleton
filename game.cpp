#include <chrono>
#include <tge/game.h>
#include <tge/graphics.h>
#include <tge/input.h>

class Game : public tge::GameManager {
public:
    void Update() override {
        if (tge::Keyboard::GetKeyDown(tge::Key::Q)) {
            Quit();
        }
    }

    void Render() override { render.DrawStringAtXY({0, 0}, L"Hello World"); }
};

int main() { Game().Run(); }

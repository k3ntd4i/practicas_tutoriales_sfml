#include <iostream>
#include "SFML/Graphics.hpp"

int main()
{
    sf::RenderWindow ventana(sf::VideoMode(800,600), "Prueba");
    sf::sleep(sf::milliseconds(3000));

    std::cout << "Chao, World!" << '\n';

    return 0;
}

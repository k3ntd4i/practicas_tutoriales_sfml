#include <SFML/Graphics.hpp>

int main()
{
    sf::RenderWindow window(sf::VideoMode(120, 30), "SFML Window");
    sf::Color backgroundColor = sf::Color::Black;
    window.setPosition(sf::Vector2i(1250, 10));
    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::MouseWheelScrolled)
            {
                sf::Vector2i position = window.getPosition();
                if (event.mouseWheelScroll.delta > 0) {
                    // Scroll up
                    position.x += 10; // Move window to the right
                } else {
                    // Scroll down
                    position.x -= 10; // Move window to the left
                }
                window.setPosition(position);
            }
            if (event.type == sf::Event::Closed)
                window.close();

            if (event.type == sf::Event::MouseEntered)
                backgroundColor = sf::Color::Red;

            if (event.type == sf::Event::MouseLeft)
                backgroundColor = sf::Color::Green;
        }

        // Clear the window with the updated background color
        window.clear(backgroundColor);
        window.display();
    }

    return 0;
}

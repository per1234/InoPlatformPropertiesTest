InoPlatformPropertiesTest
==========
Dummy [Arduino](https://arduino.cc) hardware package for testing how properties and recipes are handled.

It can be very difficult to understand the interaction between the compilation and upload recipes, [pre/post build hooks](https://github.com/arduino/Arduino/wiki/Arduino-IDE-1.5-3rd-party-Hardware-specification#pre-and-post-build-hooks-since-ide-165), and properties used by the Arduino hardware package system. This package produces console output that makes this easy to check.

## Installation
- This platform has a dependency on Arduino AVR Boards (for avr-gcc). If you are using the Arduino IDE, this is already installed. If you're using Arduino CLI or Arduino Pro IDE, you'll need to install it.
- Download the InoPlatformPropertiesTest files here: https://github.com/per1234/InoPlatformPropertiesTest/archive/master.zip
- Extract the .zip file.
- Move the extracted folder into the **hardware** folder in your sketchbook folder. You can find the location of your sketchbook folder at **File > Preferences > Sketchbook location:**.
- If the Arduino IDE is running then restart it.


## Usage
- Tools > Board > InoPlatformPropertiesTest
- Tools > Programmer > InoPlatformPropertiesTest
- File > Examples > DummyLibrary > DummyLibraryExample
- File > Preferences > Show verbose output during: > compilation (check) > upload (check) > OK
- Run the process you want to study:
  - Sketch > Verify/Compile
  - Sketch > Export Compiled Binary
  - Sketch > Upload
  - Sketch > Upload Using Programmer
  - Tools > Burn Bootloader
- Examine the contents of the black console window at the bottom of the Arduino IDE window. You may need to scroll up to see it all. The recipe being run is shown, followed by a list of all standardized properties and their values. Refer to the [Arduino Hardware Specification](https://github.com/arduino/Arduino/wiki/Arduino-IDE-1.5-3rd-party-Hardware-specification) for documentation.

If you want to test the properties associated with precompiled libraries, use **File > Examples > DummyPrecompiledLibrary > DummyPrecompiledLibraryExample**.


## Contributing
Pull requests or issue reports are welcome! Please see the [contribution rules](https://github.com/per1234/InoPlatformPropertiesTest/blob/master/.github/CONTRIBUTING.md) for instructions.

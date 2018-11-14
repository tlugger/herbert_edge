# Automated IoT Plant Irrigation

Edge project to run on an edge node for controll the irrigation of a desk plant based on soil moisture measurements.

## How to Use

  Clone this project template using the nio command line interface (CLI) or Git.
  ```
  nio new plant-node -t https://github.com/tlugger/herbert_edge.git
  ```

## Hardware Used

- [Raspberry Pi 3 B+](https://www.sparkfun.com/products/14643)
- [DHT22 Temperature Humidity Sensor](https://www.sparkfun.com/products/12796)
- [Soil Moisture Sensor](https://www.sparkfun.com/products/13637)
- [3-4.5V DC Motor](https://www.ebay.com/itm/Super-Mini-Tiny-DC-3-4-5V-Brushless-Motor-Submersible-Water-Pump-/391957543219)
- [Marina Tubing](http://a.co/d/4tPAHSp)
- [NPN Transistor](https://www.sparkfun.com/products/13689)
- [1K Ohm Resistor](https://www.sparkfun.com/products/14492)
- [Jumper Wires](https://www.sparkfun.com/products/12796)

## Wiring Schematic

![](https://s3-us-west-2.amazonaws.com/cilantr.io/images/Herbie+Sketch+v3.png "Wiring Schematic")

## File Reference

**blocks**<br>A directory that contains block types, as submodules. The project template comes with a few of the most commonly used block types. Block types can be added and removed. Additional block types can be found in the block library and added through the System Designer, or, you can add your own custom block types here.

**etc**
<br>A folder containing project configurations and scripts.

**nio.conf**
A simple project configuration file that has reasonable defaults set for you.

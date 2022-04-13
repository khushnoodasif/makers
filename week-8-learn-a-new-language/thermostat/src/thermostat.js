'use strict';

class Thermostat {
  constructor() {
    this.temperature = 20;
    this.MIN_TEMPERATURE = 10;
  }

  getCurrentTemperature() {
    return this.temperature
  }

  up() {
    this.temperature += 1;
  }

  down() {
    if (this.isMinTemperature()) {
      return;
    }
    this.temperature -= 1;
  }

  isMinTemperature() {
    return this.temperature === this.MIN_TEMPERATURE;
  }
}
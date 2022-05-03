'use strict';

class Thermostat {
  constructor() {
    this.DEFAULT_TEMPERATURE = 20;
    this.temperature = this.DEFAULT_TEMPERATURE; 
    this.MIN_TEMPERATURE = 10;
    this.MAX_TEMPERATURE_PSM_ON = 25;
    this.MAX_TEMPERATURE_PSM_OFF = 32;
    this.powerSavingMode = true;
    this.MEDIUM_ENERGY_USAGE_LIMIT = 18;
    this.HIGH_ENERGY_USAGE_LIMIT = 25;
  }

  getCurrentTemperature() {
    return this.temperature
  }

  up() {
    if (this.isMaxTemperature()) {
      return;
    }
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

  isPowerSaveModeOn() {
    return this.powerSavingMode;
  }

  SwitchPowerSaveModeOff() {
    this.powerSavingMode = false;
  }

  SwitchPowerSaveModeOn() {
    this.powerSavingMode = true;
  }

  isMaxTemperature() {
    if (this.isPowerSaveModeOn()) {
      return this.temperature === this.MAX_TEMPERATURE_PSM_ON;
    } else {
      return this.temperature === this.MAX_TEMPERATURE_PSM_OFF;
    }
  }

  resetTemperature() {
    this.temperature = this.DEFAULT_TEMPERATURE;
  }

  energyUsage() {
    if (this.temperature < this.MEDIUM_ENERGY_USAGE_LIMIT) {
      return 'low-usage';
    }
    if (this.temperature <= this.HIGH_ENERGY_USAGE_LIMIT) {
      return 'medium-usage';
    }
    return 'high-usage';
  }
}
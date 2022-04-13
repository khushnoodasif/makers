'use strict';

describe('Thermostat', () => {
  let thermostat;

  beforeEach(() => {
    thermostat = new Thermostat();
  });

  it('starts at 20 degrees', () => {
    expect(thermostat.getCurrentTemperature()).toEqual(20);
  })
  
  it('increases in temperature with up() to 21 degrees', () => {
    thermostat.up();
    expect(thermostat.getCurrentTemperature()).toEqual(21);
  })
  
    it('increases in temperature with up() to 22 degrees', () => {
      thermostat.up();
      thermostat.up();
      expect(thermostat.getCurrentTemperature()).toEqual(22);
    })
  
    it('decreases in temperature with down() to 19 degrees', () => {
      thermostat.down();
      expect(thermostat.getCurrentTemperature()).toEqual(19);
    })
  
    it('decreases in temperature with down() to 18 degrees', () => {
      thermostat.down();
      thermostat.down();
      expect(thermostat.getCurrentTemperature()).toEqual(18);
    })

    it('has a minimum temperature of 10 degrees', () => {
      for (let i = 0; i < 11; i++) {
        thermostat.down();
      }
      expect(thermostat.getCurrentTemperature()).toEqual(10);
    })

    it('has a power saving mode on by default', () => {
      expect(thermostat.isPowerSaveModeOn()).toBe(true);
    })

    it('has a power saving mode off', () => {
      expect(thermostat.isPowerSaveModeOff()).toBe(false);
    })
});
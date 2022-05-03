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
    thermostat.SwitchPowerSaveModeOff();
    expect(thermostat.isPowerSaveModeOn()).toBe(false);
  })

  it('switch back power saving mode to on', () => {
    thermostat.SwitchPowerSaveModeOff();
    expect(thermostat.isPowerSaveModeOn()).toBe(false);
    thermostat.SwitchPowerSaveModeOn();
    expect(thermostat.isPowerSaveModeOn()).toBe(true);
  })

  it('can be reset to default temperature', () => {
    for (let i = 0; i <6; i++) {
      thermostat.up();
    }
    thermostat.resetTemperature();
    expect(thermostat.getCurrentTemperature()).toEqual(20);
  })
});

describe('when power saving mode is on', () => {
  let thermostat;

  beforeEach(() => {
    thermostat = new Thermostat();
  });
  
  it('has max temperature of 25 degrees', () => {
    for (let i = 0; i < 6; i++) {
      thermostat.up();
    }
    expect(thermostat.getCurrentTemperature()).toEqual(25);
  })
});

describe('when power saving mode is off', () => {
  let thermostat;

  beforeEach(() => {
    thermostat = new Thermostat();
  });
  
  it('has max temperature of 32 degrees', () => {
    thermostat.SwitchPowerSaveModeOff();
    for (let i = 0; i < 13; i++) {
      thermostat.up();
    }
    expect(thermostat.getCurrentTemperature()).toEqual(32);
  })
});

describe('displaying usage levels', () => {
  let thermostat;

  beforeEach(() => {
    thermostat = new Thermostat();
  });
  
  describe('when the temperature is below 18 degrees', () => {
    it('it is considered low-usage', () => {
      for (let i = 0; i < 3; i++) {
        thermostat.down();
      }
      expect(thermostat.energyUsage()).toEqual('low-usage');
    });
  });

  describe('when the temperature is between 18 and 25 degrees', () => {
    it('it is considered medium-usage', () => {
      expect(thermostat.energyUsage()).toEqual('medium-usage');
    });
  });

  describe('when the temperature is anything else', () => {
    it('it is considered high-usage', () => {
      thermostat.powerSavingMode = false;
      for (let i = 0; i < 6; i++) {
        thermostat.up();
      }
      expect(thermostat.energyUsage()).toEqual('high-usage');
    });
  });
});
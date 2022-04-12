"use strict";

describe("CountController", function () {
  let countController,
    incrementButtonMock,
    countModelMock,
    countViewMock,
    countPersisterMock,
    clickHandler;

  beforeEach(function () {
    incrementButtonMock = { addEventListener: null };
    spyOn(incrementButtonMock, "addEventListener").and.callFake(
      (_, _clickHandler) => {
        clickHandler = _clickHandler;
      }
    );

    countModelMock = jasmine.createSpyObj("countModel", [
      "count",
      "set",
      "increment",
    ]);
    countModelMock.count.and.returnValue(0);

    countViewMock = jasmine.createSpyObj("countView", ["display"]);

    countPersisterMock = jasmine.createSpyObj("countPersister", ["get", "set"]);
    countPersisterMock.get.and.callFake(() => Promise.resolve());

    countController = new CountController(
      incrementButtonMock,
      countModelMock,
      countViewMock,
      countPersisterMock
    );
  });

  describe("::new", function () {
    it("should set countView to initial count", async function () {
      await Promise.resolve();
      expect(countViewMock.display).toHaveBeenCalledWith(0);
    });
  });

  describe("clicking increment button", function () {
    beforeEach(function () {
      countPersisterMock.set.and.callFake(() => Promise.resolve());
    });

    it("should set things up so button click updates count model", async function () {
      await Promise.resolve();
      clickHandler();
      expect(countModelMock.increment).toHaveBeenCalled();
    });

    it("should set things up so button click updates count view", async function () {
      await Promise.resolve();
      clickHandler();
      expect(countViewMock.display).toHaveBeenCalledWith(0);
    });
  });
});

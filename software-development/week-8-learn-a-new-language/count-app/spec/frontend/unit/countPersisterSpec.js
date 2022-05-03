"use strict";

describe("CountPersister", function() {
  describe("createCountPersister", function() {
    it("should create new countPersister instance", function() {
      const subject = new CountPersister();
      expect(subject.get).toBeDefined();
    });
  });

  describe("#get", function() {
    it("should get /count URL", function() {
      const serverResponse = { count: 5 };
      const $Mock = jasmine.createSpy("fetchMock").and.resolveTo({
        json: jasmine.createSpy("fetchMockJSON").and.resolveTo(serverResponse)
      });

      const subject = new CountPersister($Mock);
      subject.get();

      expect($Mock).toHaveBeenCalledWith("/count");
    });

    it("should return count to callback", async function() {
      const serverResponse = { count: 5 };
      const $Mock = jasmine.createSpy("fetchMock").and.resolveTo({
        json: jasmine.createSpy("fetchMockJSON").and.resolveTo(serverResponse)
      });

      const subject = new CountPersister($Mock);
      const result = await subject.get();

      expect(result).toEqual(serverResponse.count);
    });
  });

  describe("#set", function() {
    it("should send post and count to /count URL", async function() {
      const count = 5;
      const serverResponse = {};
      const $Mock = jasmine.createSpy("fetchMock").and.resolveTo({
        json: jasmine.createSpy("fetchMockJSON").and.resolveTo(serverResponse)
      });

      const subject = new CountPersister($Mock);
      const result = await subject.set(5);

      expect($Mock).toHaveBeenCalledWith("/count", {
        method: "POST",
        headers: {
          'Content-Type': 'application/json'
        },
        body: '{"count":5}'
      });
    });
  });
});

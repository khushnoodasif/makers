// Understands how to persist the count.

"use strict";

class CountPersister {
  constructor(_fetch) {
    this._fetch = _fetch;
  }

  async get() {
    const response = await this._fetch("/count");
    const json = await response.json();
    return json.count;
  }

  set(count) {
    return this._fetch("/count", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ count }),
    });
  }
}

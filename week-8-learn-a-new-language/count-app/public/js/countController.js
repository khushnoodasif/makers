// Understands how to update a CountView and CountModel when the
// increment button is clicked.

"use strict";

class CountController {
  constructor(incrementButton, countModel, countView, countPersister) {
    this._incrementButton = incrementButton;
    this._countModel = countModel;
    this._countView = countView;
    this._countPersister = countPersister;

    this._init();
  }

  async _init() {
    const count = await this._countPersister.get();
    this._countModel.set(count);
    this._updateCountView();

    this._setupButtonToIncrementCount();
  }

  _setupButtonToIncrementCount() {
    this._incrementButton.addEventListener("click", () => {
      this._countModel.increment();
      this._countPersister.set(this._countModel.count());
      this._updateCountView();
    });
  }

  _updateCountView() {
    this._countView.display(this._countModel.count());
  }
}

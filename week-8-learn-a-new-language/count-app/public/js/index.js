"use strict";

const setup = () => {
  const incrementButton = document.getElementById("increment");
  const countDiv = document.getElementById("count");

  new CountController(
    incrementButton,
    new CountModel(),
    new CountView(countDiv),
    new CountPersister(window.fetch.bind(window))
  );
};

setup();

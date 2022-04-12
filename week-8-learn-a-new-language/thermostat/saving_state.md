# Thermostat: saving state

[Back to the Challenge Map](README.md)

There is an issue with your thermometer interface!  If you close your browser and reopen it, it forgets what settings you had. It has no persistence. Over the last couple of weeks how have we managed persistence in our applications?

* Create a remote API that the thermostat can talk to. (hint: you can build your own web server to provide this API using Sinatra!).
* Update your UI so that the thermostat communicates changes to the API. For example, it could make a POST request to `localhost:4567/temperature`, with the new temperature.  On page refresh, the thermostat could make a GET request to `localhost:4567/temperature` to get the temperature.
* Save the selected city information using the API too.

**Note: if you want to use sessions to save state on the API side, be aware that sessions only work if your HTML page is served with a server application like Sinatra. Sessions _won't work_ if you directly open the HTML page as a file (you can easily check that by looking at the URL and seeing if it begins with `http://` or `file://`)**

## Resources

There is an example of how to approach this challenge [here](https://github.com/makersacademy/thermostat-example). **Read the README carefully** before looking through the code, there are several branches showing different solution options.


## Walkthrough

You'll be able to use a lot of the same techniques as the ones you used in week 4. Consider having a look at those walkthroughs if you get stuck.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=thermostat_es6/saving_state.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=thermostat_es6/saving_state.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=thermostat_es6/saving_state.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=thermostat_es6/saving_state.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=thermostat_es6/saving_state.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->

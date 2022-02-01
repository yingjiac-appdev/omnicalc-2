# Omnicalc 2

## Target

The username and password is on Canvas — here is our target:

[https://omnicalc-2.matchthetarget.com/](https://omnicalc-2.matchthetarget.com/)

## Query strings

The essential concept: visitors can add a **query string** onto _any_ URL in your Rails app, e.g.

```
/rock?dessert=Ice cream&color=Orange
```

Watch what happens in your server log when you visit that URL.

Rails parses any query string parameters and puts them into a special Hash called `params`. You have access to `params` in the action.

With that simple fact, combined with the way that HTML forms behave when submitted, we can invent ways to make any forms we want work!

## Your first task

Wire up the following 4 RCAVs and add `<h1>` elements to each that say "Addition", "Subtraction", "Multiplication", and "Division":

 - `/add`
 - `/subtract`
 - `/multiply`
 - `/divide`

Use the [slides](https://slides.com/raghubetina/07-routing?token=Qj5aA5z3), [chapter](https://chapters.firstdraft.com/chapters/779), and your RPS RCAV workspace as a reference.

## Your second task

Visit your `/wizard_add` URL, but type a query string on to the end: `?first_num=3&second_num=4`. So, the whole path should be:

```
/wizard_add?first_num=3&second_num=4
```

First pull up the Terminal tab running your server and Cmd-K or Ctrl-K to clear it out, then visit that URL again. Scroll to the top of the Terminal tab. Read the log — what do you notice?

The `params` Parameters `Hash`! Use the `params` hash in the action you defined to calculate a result and display it in the view template you created. Make the markup [match the target](https://omnicalc-2.matchthetarget.com/wizard_add?first_num=3&second_num=4).

## Do the other 3

Do the same thing for 

 - `/wizard_subtract`,
 - `/wizard_multiply`,
 - and `/wizard_divide`.

## Add forms

Now, make it easier on your users. They should not have to type into the address bar of their browsers to access these useful calculations.

Can you invent a way to make it easier for them using what you've learned about RCAV, `params`, and what we reverse-engineered about how HTML forms work?

## Intro to APIs

Some handy links:

 - [JSONView Chrome extension](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc?hl=en)
 - [Dark Sky forecast at the Merchandise Mart for humans](https://darksky.net/forecast/41.8887,-87.6355/us12/en)
 - Dark Sky forecast at the Merchandise Mart for machines:
 
     ```
     https://api.darksky.net/forecast/REPLACE_THIS_PATH_SEGMENT_WITH_YOUR_API_TOKEN/41.8887,-87.6355
     ```
 - [Dark Sky API docs](https://darksky.net/dev/docs)
 - [Map of Merchandise Mart for humans](https://goo.gl/maps/2mXdvBnHSGuMq98m6)
 - Map of Merchandise Mart for machines:

    ```
    https://maps.googleapis.com/maps/api/geocode/json?address=Merchandise%20Mart%20Chicago&key=REPLACE_THIS_QUERY_STRING_PARAMETER_WITH_YOUR_API_TOKEN
    ```
 - [Google Geocoding API docs](https://developers.google.com/maps/documentation/geocoding/start)
 - [How to store secrets securely on Gitpod](https://chapters.firstdraft.com/chapters/792)

## Your tasks

 - **Street to Coordinates:** Figure out how to turn an arbitrary street address (find a place that is [sort of rainy](https://www.rainviewer.com/) right now to test with) into a latitude/longitude using the Geocoding API.
 - **Coordinates to weather:** Figure out how to turn a latitude/longitude pair into a weather forecast using the Dark Sky API Show the information displayed in the target:
    - Current Temperature
    - Current summaray
    - Outlooks for next sixy minutes, several hours, several days
 - **Street to Weather:** Put the above two together — given an arbitrary street address, display the forecast.

## Stretch goal
   
   - Stretch goal: check whether there is a >50% chance of precipitation at any point during the next 12 hours. If so, we will print "You should take an umbrella!"
   - Explore [the API documentation](https://darksky.net/dev/docs#forecast-request) to see what information is available to help you check this.
   - Something that might or might not be useful: [the `Time.at` method](https://apidock.com/ruby/Time/at/class).

        (Humans have [many, many different ways of representing dates](https://en.wikipedia.org/wiki/List_of_calendars). For the purposes of different pieces of software being able to agree on dates and times, most systems when talking to each other use [Epoch time](https://en.wikipedia.org/wiki/Unix_time) notation, or the number of seconds that have passed since midnight UTC on January 1st (minus leap seconds). Dark Sky, for example, includes times in this format. You can use `Time.at()` to convert to something more familiar, if you want to.)
 - Put all of the pieces together; given an arbitrary address:
    - print the current temperature
    - print outlook for the next hour
    - print whether a person should carry an umbrella.

## Using gems to interact with APIs

Interacting with APIs can be easier if someone has written a Ruby library (or "gem") with methods that already know the URLs, parse the JSON, and return exactly the values we want.

### Google Cloud Translate

See [this Chapter for a guide to using the Google Translate API via its first-party gem](https://chapters.firstdraft.com/chapters/849).

Read more at the gem docs:

 - [Ruby gem documentation](https://googleapis.dev/ruby/google-cloud-translate/latest/index.html#Using_the_legacy_v2_client)

### Twilio

See [this Chapter for a guide to sending text messages via the Twilio API](https://chapters.firstdraft.com/chapters/848#example-of-how-to-send-an-sms-with-the-twilio-gem).

### Stretch goal

**Make your app behave like the target!** Accept some text from the user, ask for a target language, translate the text, and SMS it to a phone number.

## Specs
<details>
  <summary>Click here to see names of each test</summary>
  
/add has a functional Route Controller Action View   
  
/add has an `<h1>` with the text 'Addition'   
  
/add has a `<form>` element   
  
/add has a label with the text 'Add this:'   
  
/add has a label with the text 'to this:'   
  
/add has two `<input>` elements   
  
/add has a button element with text 'Add!'   
  
/add has a `<form>` element with an 'action' attribute   
  
/subtract has a functional Route Controller Action View   
  
/subtract has an `<h1>` with the text 'Subtraction'   
  
/subtract has a `<form>` element   
  
/subtract has a label with the text 'Subtract this:'   
  
/subtract has a label with the text 'from this:'   
  
/subtract has two `<input>` elements   
  
/subtract has a button element with text 'Subtract!'   
  
/subtract has a `<form>` element with an 'action' attribute   
  
/multiply has a functional Route Controller Action View   
  
/multiply has an `<h1>` with the text 'Multiplication'   
  
/multiply has a `<form>` element   
  
/multiply has a label with the text 'Multiply this:'   
  
/multiply has a label with the text 'by this:'   
  
/multiply has two `<input>` elements   
  
/multiply has a button element with text 'Multiply!'   
  
/multiply has a `<form>` element with an 'action' attribute   
  
/divide has a functional Route Controller Action View   
  
/divide has an `<h1>` with the text 'Division'   
  
/divide has a `<form>` element   
  
/divide has a label with the text 'Divide this:'   
  
/divide has a label with the text 'by this:'   
  
/divide has two `<input>` elements   
  
/divide has a button element with text 'Divide!'   
  
/divide has a `<form>` element with an 'action' attribute   
  
/add has a form that submits to a valid route   
  
/add displays the first number entered when the form is submitted   
  
/add displays the second number entered when the form is submitted   
  
/add displays the sum when the form is submitted   
  
/subtract has a form that submits to a valid route   
  
/subtract displays the first number entered when the form is submitted   
  
/subtract displays the second number entered when the form is submitted   
  
/subtract displays the result of the subtraction when the form is submitted   
  
/multiply has a form that submits to a valid route   
  
/multiply displays the first number entered when the form is submitted   
  
/multiply displays the second number entered when the form is submitted   
  
/multiply displays the sum when the form is submitted   
  
/divide has a form that submits to a valid route   
  
/divide displays the first number entered when the form is submitted   
  
/divide displays the second number entered when the form is submitted   
  
/divide displays the sum when the form is submitted   
  
/coords_to_weather/new displays the latitude  displays the longitude  displays the current temperature  displays the current summary  displays the outlook for the next sixty minutes  displays the outlook for the next several hours  displays the outlook for the next several days   
  
/street_to_coords/new displays the street address  displays the latitude  displays the longitude   
  
/street_to_weather/new displays the street address  displays the current temperature  displays the current summary  displays the outlook for the next sixty minutes  displays the outlook for the next several hours  displays the outlook for the next several days   
  
</details>

I learned this at the DC RUG but not actually from doing SMS stuff.

Class variables can be accessed by that classes descendants.  Class instance varibles are not shared
by its decendants.
http://stackoverflow.com/questions/3802540/difference-between-class-variables-and-class-instance-variables

Also there is something called begin and end.  You pass in a block of code in begin or end and
those blocks of code get executed before anything else or after anything else.
http://stackoverflow.com/questions/14050296/what-does-rubys-begin-do

Using Ngrok which lets us securely expose a local web server to the internet and capture all traffic for detailed inspection and replay

In this case I am using it to test my webhooks with Twilio SMS.

What is a webhook?  Webhooks are sometimes referred to as “Reverse APIs,” as they give you what amounts to an API spec, and you must design an API for the webhook to use. The webhook will make an HTTP request to your app (typically a POST), and you will then be charged with interpreting it.

In this case the SMS being sent to our Ngrok server is a post request we are getting via SMS and checking to see if the confirmation code in the params hash is the same as what we sent that user.

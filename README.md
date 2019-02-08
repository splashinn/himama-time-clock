# himama Time Clock ⏰

🚀 A coding challenge that to build a clock-in / clock-out platform for helping employees to keep track of their time worked.

### How to Use

Website Link: [https://himama-time-clock.herokuapp.com/](https://himama-time-clock.herokuapp.com/)

#### 💡 If you are a new user (teacher) of the platform ..

1. Go to the [sign up](https://himama-time-clock.herokuapp.com/users/sign_up) page
2. Fill up the form and pass the validation
3. You will see your clock in/out page.
4. The features you can do are:
  * **clock-in** for today (only if you haven't clock in of course :P)
  * **clock-out** for today (once you clocked-in, your clock-in button will be changed to clock-out button)
  * See your **personal event logs**

<img src="https://i.imgur.com/Yrhwu8a.png" alt="Clock in" height="180"/>
<img src="https://i.imgur.com/90WODVt.png" alt="Clock in" height="180"/>
<img src="https://i.imgur.com/LDDnTyN.png" alt="Clock in" height="180"/>

#### 💡 If you are an existing user (teacher) of the platform ..

1. Log into the website with your credentials (email, password)
2. Same as point 3 and 4 of new users stated above

#### 💡 If you are an admin ..

1. Log into the website with following credentials:
  * email: admin@hola.com
  * password: 12345678
  *  (This is only for the test :P The email is made up.)
2. You will see all clock in/out events with a **sortable table** ([datatatble.js](https://xdsoft.net/jqplugins/datetimepicker/)).
3. The features you can do are:
  * modify the events via **edit** or **delete** link
  * add a new event for other employees via **Add New Event** link

![Imgur](https://i.imgur.com/5XcJEzN.png)

### Credit

This software uses the following open source packages:

* [Ruby on Rails](https://rubyonrails.org/) (Ruby v2.5.3 / Rails v5.2.2)
* [jQuery](https://jquery.com/)
* [datatable.js](https://datatables.net/)
* [datetimepicker.js](https://xdsoft.net/jqplugins/datetimepicker/)
* [moment.js](https://momentjs.com/)
* [Google Fonts](https://fonts.google.com/) (font: Kalam)
* [Bootstrap](https://getbootstrap.com/) (v4.2.1)

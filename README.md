# himama Time Clock ⏰

🚀🚀🚀 A coding challenge that to build a clock-in / clock-out platform for helping employees to keep track of their time worked.

## Key Features

### 💡 User authentication and lovely inline validation display

Ref: `app/helpers/sign_up_form_builder.rb`

<img src="https://i.imgur.com/U1CG6OJ.png" alt="Log in" height="230"/><img src="https://i.imgur.com/ZqVLsTX.png" alt="Sign up" height="280"/><img src="https://i.imgur.com/gguSGYq.png" alt="Inline validation" height="280"/>

### 💡 Warmest greeting words changed with the time changes (Good morning, afternoon, ..)

Ref: `app/helpers/clock_events_helper.rb`

![Greeting](https://i.imgur.com/d5mIq0D.png)

### 💡 Clock-in or clock-out button showed based on each user's situation per day

<img src="https://i.imgur.com/Yrhwu8a.png" alt="Clock-in" height="180"/><img src="https://i.imgur.com/90WODVt.png" alt="Clock-in" height="180"/><img src="https://i.imgur.com/LDDnTyN.png" alt="Clock-in" height="180"/>

1. Clock-in button will be shown if users have not clock-in today
2. Clock-out button will be shown if users have clocked-in today
3. Both buttons will be hidden if users have clocked-out today

### 💡 Different event logs displayed between teacher and admin

1. Teacher user can only see their own event logs
2. Admin user can see all event logs and full permission to manage (CRUD)

### 💡 A user friendly sortable / searchable / paginatable table for admin to manage the logs

Ref: [datatatble.js](https://xdsoft.net/jqplugins/datetimepicker/)

![Admin Page](https://i.imgur.com/YoH5gy7.png)

## How to Use

⭐️ Website Link: [https://himama-time-clock.herokuapp.com/](https://himama-time-clock.herokuapp.com/)

### 👉🏻 If you are a new user (teacher) of the platform ..

1. Go to the [sign up](https://himama-time-clock.herokuapp.com/users/sign_up) page
2. Fill up the form and pass the validation
3. You will see your clock-in/out page.
4. The actions you can do are:
   * **clock-in** for today (only if you haven't clock-in of course :P)
   * **clock-out** for today (once you clocked-in, your clock-in button will be changed to clock-out button)
   * See your **personal event logs**

### 👉🏻 If you are an existing user (teacher) of the platform ..

1. Log into the website with your credentials (email, password)
2. Same as point 3 and 4 of new users stated above

### 👉🏻 If you are an admin ..

1. Log into the website with following credentials:
   * email: admin@hola.com
   * password: 12345678
   *  (This is only for the test. The email is made up. 😜)
2. You will see all clock-in and clock-out events with a **sortable table**.
3. The actions you can do are:
   * modify the events via **edit** or **delete** link
   * add a new event for other employees via **Add New Event** link

## Credit

This software uses the following open source packages:

* [Ruby on Rails](https://rubyonrails.org/) (Ruby v2.5.3 / Rails v5.2.2)
* [jQuery](https://jquery.com/)
* [datatable.js](https://datatables.net/)
* [datetimepicker.js](https://xdsoft.net/jqplugins/datetimepicker/)
* [moment.js](https://momentjs.com/)
* [Google Fonts](https://fonts.google.com/) (font: Kalam)
* [Bootstrap](https://getbootstrap.com/) (v4.2.1)

#Remote Device Control

##Description

The application's purpose is to serve as administrator on a server-client system whereby an administrator can constrain the use of devices running the client application through the setting of use time, message sending and remote blocking.

The principal function of this application is to send messages to the client application that is written in the device's native code, those messages will trigger native actions like show alerts or block the device.

**Development Status** For now, this application is playing the two roles (administrator and client) until the client app is finished. So, the client application just display the messages received from the administrator.

##Setup

**Notes:**

- Make sure you have installed QT. Follow instructions from [capybara-webkit wiki: QT installation](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit)

- Export the following environment variables:

```

export PUSHER_APP_ID=19460

export PUSHER_KEY=5b5b48789d293b83abdf

export PUSHER_SECRET=c2c7653a5ec434543d37

export USER=foo

export PASSWORD=bar

```

- Heroku creditials, Username = 'foo', Password = 'bar'

###First Step
Clone repositoy in your work station and bundle:

```

$ git clone git@github.com:alberto-vallejo-ci/remote-device-control.git RDC

$ cd RDC

$ bundle

```

After you have the application running you can:

  - Enter to the application and it should send you to the devices admin
  - Connect to an existing admin entering to: /client_connections

##Application Servers

- [Heroku Demo](http://remote-device-control.herokuapp.com/)
- [Travis CI](https://travis-ci.org/#!/alberto-vallejo-ci/remote-device-control)
- [Code Climate](https://codeclimate.com/github/alberto-vallejo-ci/remote-device-control)

##Pusher Channels and Events

###Channel: devices

This channel will be listening for devices events:

####Event: new_connection

This event will be triggered when a new device is connected. It will
send the following parameters:
- id:   Unique identification number
- name: Device name

###Channel: admin_messages

This channel will be listening for admin messages to clients:

####Event: new_message

This event will be triggered when the admin send a message to a client. It will
send the following parameters:
- meessage: message
- action: action to be triggered

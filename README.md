#Remote Device Control

##Description

The application's purpose is to serve as administrator on a server-client system whereby an administrator can constrain the use of devices running the client application through the setting of use time, message sending and remote blocking.

The principal function of this application is to send messages to the client application that is written in the device's native code, those messages will trigger native actions like show alerts or block the device.

**Development Status** For now, this application is playing the two roles (administrator and client) until the client app is finished. So, the client application just display the messages received from the administrator.

##Setup

**Notes:** 

- Make sure you have installed QT. Follow instructions at [QT on Github](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit) 

- You need to declare the variables ENV['USER'] and ENV['PASSWORD'] in order to be able to login.

- Heroku creditials, Username = 'foo', Password = 'bar'

###First Step
Clone repositoy in your work station and bundle:

```

$ git clone git@github.com:alberto-vallejo-ci/remote-device-control.git 

$ cd RDC

$ bundle

```

##Application Servers

- [Heroku Demo](http://remote-device-control.herokuapp.com/)
- [Travis CI](https://travis-ci.org/#!/alberto-vallejo-ci/remote-device-control)
- [Code Climate](https://codeclimate.com/github/alberto-vallejo-ci/remote-device-control)

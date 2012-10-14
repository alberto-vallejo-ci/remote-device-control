$(document).ready ->
  window.pusher = new Pusher('5b5b48789d293b83abdf');

  time = "00:00:00"
  $("#counter").countdown
    stepTime: 60
    format: "hh:mm:ss"
    startTime: time
    digitImages: 6
    digitWidth: 53
    digitHeight: 77
    image: "../assets/digits.png"


$(document).ready ->
  window.pusher = new Pusher('77c523ef7a18fa97e600');

  time = "00:00:00"
  $("#counter").countdown
    stepTime: 60
    format: "hh:mm:ss"
    startTime: time
    digitImages: 6
    digitWidth: 53
    digitHeight: 77
    image: "../assets/digits.png"


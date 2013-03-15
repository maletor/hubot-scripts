# Description:
#   Randomly swears in the water cooler
#
# Dependencies:
#   "underscore": "1.3.3"
#
# Configuration:
#   HUBOT_WATER_COOLER_ROOM
#
# Notes:
#   Runs every 5 minutes and only fires 10% of the time
#
# Author:
#   maletor

_ = require("underscore")

module.exports = (robot) ->
  swears = ["FUCK", "SHIT", "BAG OF DICKS", "FUCK YOU, YOU FUCKING FUCK", "JIHAD", "WAFFLES", "SHIT! SHIT WHORES!"]
  swear = ->
    if Math.random() < 0.1
      robot.messageRoom process.env.HUBOT_WATER_COOLER_ROOM, _.shuffle(swears)[0]

  setInterval swear, 300000

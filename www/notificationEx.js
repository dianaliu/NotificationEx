/*
 * This class provides extended access to notifications on iOs.
 */

var exec = require('cordova/exec');

var NotificationEx = function() {

  this.activityStart = function() {
    // Start spinning the activity indicator on the statusbar
    exec(null, null, "NotificationEx", "activityStart", []);
  };

  this.activityStop = function() {
    // Stop spinning the activity indicator on the statusbar, if it's currently spinning
    exec(null, null, "NotificationEx", "activityStop", []);
  };
};

module.exports = new NotificationEx();

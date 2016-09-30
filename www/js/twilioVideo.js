var CustomTwilioVideo = {
    getTwilioVideo: function(success, failure){
        cordova.exec(success, failure, "CustomTwilioVideo", "openTwilioVideo", []);
    }
};

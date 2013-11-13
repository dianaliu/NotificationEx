### Updated 11/13/2013:
- To install, `cordova plugin add https://github.com/dianaliu/NotificationEx.git`
  - Oh, but ya know sometimes things get out of sync so you have to re-add the ios platform. Thank you [SO] (http://stackoverflow.com/a/19733423)!
  ```bash

    #!/bin/bash
    echo "Killing xcode..."
    kill $(ps aux | grep 'Xcode' | awk '{print $2}')
    rm -r platforms/ios
    rm plugins/ios.json
    cordova platforms add ios
    cordova build ios
    open platforms/ios/*.xcodeproj
  ``` 

- To remove, `cordova plugin rm org.apache.cordova.plugins.NotificationEx`
- ~~Haven't updated the code to use arc yet, so after installation you must disable it for `LoadingView.m` under Target > Build Phases > Compile Sources with the flag `-fno-objc-arc`. See http://stackoverflow.com/questions/6646052/how-can-i-disable-arc-for-a-single-file-in-a-project~~ (Removed this feature)

## NotificationEx - Adding the Plugin to your project ##

These are removed functions from PhoneGap core (Notification.loadingStart/Stop, and Notification.activityStart/Stop)
Using this plugin requires [iPhone PhoneGap](http://github.com/phonegap/phonegap-iphone) 1.0.0

1. Add all the .h and .m files to your Plugins folder in your project
2. Add the .js files to your "www" folder on disk, and add a reference to the .js file as &lt;script&gt; tags in your html file(s)
3. In your project's PhoneGap.plist, find the Plugins section. Add a new entry under there, the key is "NotificationEx", value is "NotificationEx".
4. See the sample index.html for usage examples

## LICENSE ##

**NotificationEx plugin** is [MIT licensed](http://www.opensource.org/licenses/mit-license.php) except for the code below:

**UIColorExpanded.h,.m** is [unknown currently](https://github.com/ars/uicolor-utilities), I have e-mailed the author.

**LoadingView.h,.m** license is licensed ["zlib" style](http://projectswithlove.com/about.html)

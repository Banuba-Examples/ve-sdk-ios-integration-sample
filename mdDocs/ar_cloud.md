# API for using AR cloud in the SDK

AR cloud is a product, which saves space for your app. In a nutshell, it stores AR masks on a server, instead of the SDK code. When the user open the app they download the masks, which are then saved in his phone’s memory.  

With AR cloud you also can easily rotate masks for some special events like Christmas, Halloween, or Diwali.
AR cloud is fully compatible with both Video Editor and Face AR products.

### Step 1

Add line to pod file .  

```
  pod 'BanubaARCloudSDK', '1.24.0'
```

### Step 2

Paste AR Cloud client id value [here](https://github.com/Banuba-Examples/ve-sdk-ios-integration-sample/blob/main/Example/Example/ViewController.swift#L83) to BanubaVideoEditor init with cloudMasksToken entire argument.
*Please ask Banuba to provide **client id** for trial period.*

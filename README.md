# extension-wake-lock

Lime extension for enabling / disabling automatic screen lock on Android.

### Main Features

* Enable automatic screen locking.
* Disable automatic screen locking.

### How to Install

To install this library, you can simply get the library from haxelib like this:
```bash
haxelib install extension-wake-lock
```

### How to Use

To use this extension, simply add the next line in the project.xml
```xml
<haxelib name="extension-wake-lock" />
```
Then, on your hace code:


```haxe

function someFunction(){
	// to disable screen Lock
	extension.wakeLock.WakeLock.allowScreenTimeout = false;

	// to enable screen Lock
	extension.wakeLock.WakeLock.allowScreenTimeout = true;
}

```

### License

The MIT License (MIT) - [LICENSE.md](LICENSE.md)

Copyright &copy; 2015 SempaiGames (http://www.sempaigames.com)

Author: Joacko Bengochea & Federico Bricker

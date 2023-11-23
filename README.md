This is a nice custom slider for flutter with a track design. It gives you current tick value on scroll which you can access by using onChange funtion.

## Features

- Set steps in multiple of 4.
- Get track value on scroll.
- Set initial position of slider.
- Set indicator color using selectedTrackColor.
- Set track color using unselectedTrackColor.

## Getting started

Import this package in your project dependencies.

```dart
track_slider: ^0.0.5
```

## Usage

```dart
TrackSlider(
    steps: 100,
    selectedTrackColor: Colors.blue,
    unselectedTrackColor: Colors.grey,
    marginLeft: 36,
    defaultValue: 4,
    onChange: (value) {
        //do something with value...
    },
)
```

## Properties

- `steps: ` Number of lines on slider.
- `default_value: ` Define initial position of slider.
- `marginLeft: ` It is the left padding of parent widget if available.
- `selectedTrackColor: ` Colors of selected index.
- `unselectedTrackColor: ` Color of track.
- `onChange(): ` It returns the value of current index.


## Screenshots

![ALT TEXT](https://lh3.googleusercontent.com/d/1lRZ0_czUbogKA8Z3r_j66XdIkW1rxGRo)

![ALT TEXT](https://lh3.googleusercontent.com/d/1sxWXIIRu7Pz0jyNPSHpd2NsLIHYUunyT)

## GitHub Link

https://github.com/uroojk844/track_slider

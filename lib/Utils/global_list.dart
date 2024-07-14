import 'package:flutter/material.dart';

List planetList = [
  {
    "name": "Mercury",
    "size": 2439.7, // in km (mean radius)
    "distanceFromSun": 57.9, // in million km
    "distanceFromEarth": 91.7, // in million km
    "img": "Assets/Img/mercury.png", // URL to an image
    "sp": "Smallest"
  },
  {
    "name": "Venus",
    "size": 6051.8,
    "distanceFromSun": 108.2,
    "distanceFromEarth": 41.4,
    "img": "Assets/Img/venus.png",
    "sp": "Hottest"
  },
  {
    "name": "Earth",
    "size": 6371.0,
    "distanceFromSun": 149.6,
    "distanceFromEarth": 0.0,
    "img": "Assets/Img/earth.png",
    "sp": "Life"
  },
  {
    "name": "Mars",
    "size": 3389.5,
    "distanceFromSun": 227.9,
    "distanceFromEarth": 78.3,
    "img": "Assets/Img/mars.png",
    "sp": "Red"
  },
  {
    "name": "Jupiter",
    "size": 69911.0,
    "distanceFromSun": 778.5,
    "distanceFromEarth": 628.7,
    "img": "Assets/Img/jupiter.png",
    "sp": "Largest"
  },
  {
    "name": "Saturn",
    "size": 58232.0,
    "distanceFromSun": 1434.0,
    "distanceFromEarth": 1277.4,
    "img": "Assets/Img/saturn.png",
    "sp": "Rings"
  },
  {
    "name": "Uranus",
    "size": 25362.0,
    "distanceFromSun": 2871.0,
    "distanceFromEarth": 2721.8,
    "img": "Assets/Img/uranus.png",
    "sp": "Tilted"
  },
  {
    "name": "Neptune",
    "size": 24622.0,
    "distanceFromSun": 4495.1,
    "distanceFromEarth": 4353.6,
    "img": "Assets/Img/neptune.png",
    "sp": "Windy"
  },
  {
    "name": "Pluto",
    "size": 1188.3,
    "distanceFromSun": 5906.4,
    "distanceFromEarth": 5283.3,
    "img": "Assets/Img/pluto.png",
    "sp": "Dwarf"
  }
];

int liveIndex =0;
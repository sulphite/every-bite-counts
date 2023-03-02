// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import IndexMapController from "./index_map_controller"
application.register("index-map", IndexMapController)

import MapController from "./map_controller"
application.register("map", MapController)

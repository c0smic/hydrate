# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./controllers/main
# require_tree ./services/main

angular.module("hydrateApp", ["ngCookies", "ngResource", "ngSanitize", "ngRoute"]).config ($routeProvider) ->
  $routeProvider.when("/",
    templateUrl: "../assets/main.html"
    controller: "MainCtrl"
  ).when("/track",
    templateUrl: "../assets/track.html"
    controller: "TrackCtrl"
  ).when("/login",
    templateUrl: "../assets/login.html"
    controller: "LoginCtrl"
  ).when("/signup",
    templateUrl: "../assets/signup.html"
    controller: "SignupCtrl"
  ).when("/about",
    templateUrl: "../assets/about.html"
    controller: "aboutCtrl"
  ).when("/contact",
    templateUrl: "../assets/contact.html"
    controller: "contactCtrl"
  ).otherwise redirectTo: "/"

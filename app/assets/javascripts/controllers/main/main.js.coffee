"use strict"
angular.module("hydrateApp").controller("MainCtrl", ($scope, $location, $anchorScroll) ->
  $scope.scrollTo = (id) ->
    $location.hash id
    $anchorScroll()

  $scope.dayTotal = 0
  $scope.dayGoal = 2500
  $scope.volumes = ["10", "100", "500"]
  $scope.units = ["mL", "oz"]
  $scope.volume = $scope.volumes[1]
  $scope.unit = $scope.units[0]
  $scope.updateDayTotal = (buttonCta) ->
    $scope.dayTotal = $scope.dayTotal + 100
    return $scope.buttonCta = not buttonCta  unless $scope.buttonCta
    $scope.dayTotal
).controller "TrackCtrl", ($scope) ->
  $scope.dayTotal = 0
  $scope.dayGoal = 2500
  $scope.volumes = ["10", "100", "500"]
  $scope.units = ["mL", "oz"]
  $scope.volume = $scope.volumes[1]
  $scope.unit = $scope.units[0]
  $scope.updateDayTotal = (buttonCta) ->
    $scope.dayTotal = $scope.dayTotal + 100
    return $scope.buttonCta = not buttonCta  unless $scope.buttonCta
    $scope.dayTotal

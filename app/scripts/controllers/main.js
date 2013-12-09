'use strict';

angular.module('hydrateApp')
  .controller('MainCtrl', function ($scope, $location, $anchorScroll) {
    $scope.scrollTo = function(id) {
      $location.hash(id);
      $anchorScroll();
    };

    $scope.dayTotal = 0;
    $scope.dayGoal = 2500;

    $scope.volumes = [
      '10',
      '100',
      '500'
    ];
    $scope.units = [
      'mL',
      'oz'
    ];

    $scope.volume = $scope.volumes[1];
    $scope.unit = $scope.units[0];

    $scope.updateDayTotal = function (buttonCta) {
      $scope.dayTotal = $scope.dayTotal + 100;
      if(!$scope.buttonCta){
        return $scope.buttonCta = ! buttonCta;
      }
      return $scope.dayTotal;
    };
  })
  .controller('TrackCtrl', function ($scope) {

    $scope.dayTotal = 0;
    $scope.dayGoal = 2500;

    $scope.volumes = [
      '10',
      '100',
      '500'
    ];
    $scope.units = [
      'mL',
      'oz'
    ];

    $scope.volume = $scope.volumes[1];
    $scope.unit = $scope.units[0];

    $scope.updateDayTotal = function (buttonCta) {
      $scope.dayTotal = $scope.dayTotal + 100;
      if(!$scope.buttonCta){
        return $scope.buttonCta = ! buttonCta;
      }
      return $scope.dayTotal;
    };
  });

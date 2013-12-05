'use strict';

angular.module('hydrateApp')
  .controller('MainCtrl', function ($scope) {
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

    $scope.updateDayTotal = function () {
      $scope.dayTotal = $scope.dayTotal + 100;
      return $scope.dayTotal;
    };
  });
'use strict';

angular.module('hydrateApp')
  .controller('MainCtrl', function ($scope) {
    $scope.volume = [
      '10',
      '100',
      '500'
    ];
    $scope.units = [
      'mL',
      'oz'
    ];
  });

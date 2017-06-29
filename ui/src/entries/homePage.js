'use strict';

import '../../node_modules/bootstrap/dist/css/bootstrap.css';
import '../../node_modules/bootstrap/dist/js/bootstrap.min.js';
import '../lib/css/css/AdminLTE.min.css';
import '../lib/css/css/skins/skin-blue.min.css';
import '../lib/css/js/app.min.js';
import '../../node_modules/bootstrap-datepicker/dist/css/bootstrap-datepicker3.min.css';
import '../../node_modules/angular-ui-bootstrap/src/datepicker/datepicker.js';
import '../../node_modules/bootstrap-datepicker/js/bootstrap-datepicker.js';
import ngFileUpload from 'ng-file-upload';


import '../modules/project.js';
import '../modules/default.js';
import '../modules/invite.js';
import '../modules/projectSetting.js';
import '../modules/message.js';
import '../modules/create_hospital.js';
import '../modules/update_hospital.js';

import angular from 'angular';
import uiRouter from 'angular-ui-router';
import LocalStorageModule from 'angular-local-storage';

var homePage = angular.module('homePage', [uiRouter, LocalStorageModule, ngFileUpload, 'default', 'project', 'invite', 'projectSetting', 'message', 'createHospital', 'updateHospital']);

homePage.config(['$stateProvider', '$urlRouterProvider', 'localStorageServiceProvider', function($stateProvider, $urlRouterProvider, localStorageServiceProvider) {

  $urlRouterProvider.when('', '/default');

  $stateProvider.state('default', {
    url: '/default',
    template: require('../templates/default.html'),
    controller: 'defaultController'
  })
  .state('message',{
    url:'/message',
    template:require('../templates/message.html'),
    controller: 'messageController'
  })
  .state('createHospital',{
    url:'/createHospital',
    template:require('../templates/create_hospital.html'),
    controller: 'createHospitalController'
  })
  .state('updateHospital',{
    url:'/updateHospital',
    template:require('../templates/update_hospital.html'),
    controller: 'updateHospitalController'
  }) 
  .state('hospital',{
    url:'/hospital',
    template:require('../templates/hospital.html'),
    controller: 'hospitalController'
  }) 
  .state('project', {
    url: '/project',
    template: require('../templates/project.html'),
    controller: 'projectController'
  })
  .state('project.projectDefault', {
    url: '/projetDefault',
    template: require('../templates/project/projectDefault.html'),
    controller: 'projectDefaultController'
  })
  .state('project.projectCase', {
    url: '/projectCase',
    params: {'project_searchInput' : null},
    template: require('../templates/project/caseIllness.html'),
    controller: 'projectCaseController'
  })
  .state('project.hospitalDefault', {
    url: '/hospitalDefault',
    template: require('../templates/project/hospitalDefault.html'),
    controller: 'hospitalDefaultController'
  })
  .state('invite',{
    url:'/invite',
    template:require('../templates/invite.html'),
    controller: 'inviteController'
  })
  .state('projectSetting',{
    url:'/projectSetting',
    template:require('../templates/projectSetting.html'),
    controller: 'projectSettingController'
  });

  localStorageServiceProvider
      .setPrefix('login')
      .setStorageType('sessionStorage')
      .setNotify(true, true);


}]);

homePage.controller('homePageController', ['$scope', '$http', '$rootScope', '$state', 'localStorageService', function($scope, $http, $rootScope, $state, localStorageService) {

  var project1 = {
    name: '测试项目',
    id: 1
  };
  var project2 = {
    name: '测试项目2',
    id: 2
  };
  var project3 = {
    name: '测试项目3',
    id: 3
  }; 

  $scope.projects = [project1, project2, project3];

  /**
   *设置该账户当前点击的项目，并将该账户在该项目下的权限也保存在project对象里
   */
  $scope.click_project = function(project){
    localStorageService.set('project', project);
  }


  $scope.search_project = function(){

   /*  $http({
      method: 'GET',
      url: '/search_projectName'
    }).then(function successCallback(response){


    }, function failCallback(response){
      console.log('没有找到相关项目！');
    });
 */
  }

  

}]);






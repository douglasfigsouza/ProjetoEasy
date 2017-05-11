angular.module('Gesprog')
.controller('GesprogCtrl', function ($scope, GesprogService) {
    $scope.cidades = null;
        GesprogService.GetCityId().then(function (d) {
        $scope.cidades = d.data; // Successo
    }, function () {
        alert('Ocorreu um erro'); // Falhou
    });
})
.factory('GesprogService', function ($http) {
    var fac = {};
    fac.Cidades = function () {
        return $http.get('/Programadores/GetCityId($scope.EstadoSelecionado)');
    }
    return fac;
});

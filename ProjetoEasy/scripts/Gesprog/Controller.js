angular.module("Gesprog").controller('GesprogCtrl', function ($scope, $http)
{
    $scope.getCities = function (id) {
        $http.get('Cidades/GetCityId/' + id).then(function (response) {
            $scope.cities = response.data;
        })
    }
});
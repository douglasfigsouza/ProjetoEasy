angular.module("Gesprog").service("GesprogService", function ($http) {
    // get Book by bookId
    this.getCity = function (EstadoSelecionado) {
        var response = $http({
            method: "post",
            url: "Cidades/GetCityId",
            params: {
                id: JSON.stringify(EstadoSelecionado)
            }
        });
        return response;
    }
});
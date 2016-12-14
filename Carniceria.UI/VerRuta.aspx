<%@ Page Title="" Language="C#" MasterPageFile="~/Distribucion.Master" AutoEventWireup="true" CodeBehind="VerRuta.aspx.cs" Inherits="Carniceria.UI.VerRuta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        html, body, #canvasMap {
            height: 400px;
            margin: 0px;
            padding: 0px;
        }  
    </style>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARRDb81VEOlpKCazVqpEvQrxJ3t7SCemo"></script>  
    <script type="text/javascript" src="https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyARRDb81VEOlpKCazVqpEvQrxJ3t7SCemo"></script>

    <div id="canvasMap"></div>

    <script type="text/javascript">  
        (function () {
            var directionsService = new google.maps.DirectionsService();
            var infowindow = new google.maps.InfoWindow();

            var createMarker = function(place) {
                var placeLoc = place.geometry.location;
                var marker = new google.maps.Marker({
                    map: map,
                    position: place.geometry.location
                });

                google.maps.event.addListener(marker, 'click', function () {
                    infowindow.setContent(place.name);
                    infowindow.open(map, this);
                });

                return marker;
            }


            var initGoogleMap = function () {
                var flightPlanCoordinates = [];
                var locations = [
                    { nombre: 'City Mall', lat: 10.0042371, lng: -84.2117821 },
                    { nombre: 'Multiplaza Escazú', lat: 9.9440711, lng: -84.1526274 },
                    { nombre: 'Paseo de las Flores', lat: 9.9848576, lng: -84.1123956 },
                    { nombre: 'Puntarenas', lat: 9.9785503, lng: -84.8397306 }
                ];
                var bounds = new google.maps.LatLngBounds();

                var map = new google.maps.Map(document.getElementById('canvasMap'), {
                });

                for (var i = 0; i < locations.length; i++) {
                    var location = locations[i];
                    var marker = new google.maps.Marker({
                        position: { lat: location.lat, lng: location.lng },
                        title: location.nombre,
                        map: map
                    });
                    bounds.extend(marker.getPosition());
                    flightPlanCoordinates.push(marker.getPosition());
                }
                map.fitBounds(bounds);

                directionsDisplay = new google.maps.DirectionsRenderer({
                    suppressMarkers: true
                });
                directionsDisplay.setMap(map);

                var start = flightPlanCoordinates[0];
                var end = flightPlanCoordinates[flightPlanCoordinates.length - 1];
                var waypts = [];
                for (var i = 1; i < flightPlanCoordinates.length - 1; i++) {
                    waypts.push({
                        location: flightPlanCoordinates[i],
                        stopover: true
                    });
                }
                calcRoute(start, end, waypts);

                
                //Using geocoder
                //var geocoder = new google.maps.Geocoder();
                //geocoder.geocode({ 'address': 'Alajuela, Alajuela, Costa Rica' }, function (results, status) {
                //    if (status == google.maps.GeocoderStatus.OK) {
                //        var newAddress = results[0].geometry.location;
                //        var marker = new google.maps.Marker({
                //            position: { lat: parseFloat(newAddress.lat()), lng: parseFloat(newAddress.lng()) },
                //            map: map,
                //            title: 'Los Arcos'
                //        });
                //        bounds.extend(marker.getPosition());
                //    }
                //    map.fitBounds(bounds);
                //});

                //Add Listener
                google.maps.event.addListener(map, "click", function (event) {
                    var latitude = event.latLng.lat();
                    var longitude = event.latLng.lng();
                    console.log(latitude + ', ' + longitude);
                });
            };

            var calcRoute = function(start, end, waypts) {
                var request = {
                    origin: start,
                    destination: end,
                    waypoints: waypts,
                    optimizeWaypoints: true,
                    travelMode: google.maps.TravelMode.DRIVING
                };
                directionsService.route(request, function (response, status) {
                    if (status == google.maps.DirectionsStatus.OK) {
                        directionsDisplay.setDirections(response);
                        var route = response.routes[0];
                        var summaryPanel = document.getElementById('directions_panel');
                        summaryPanel.innerHTML = '';
                        // For each route, display summary information.
                        for (var i = 0; i < route.legs.length; i++) {
                            var routeSegment = i + 1;
                            summaryPanel.innerHTML += '<b>Route Segment: ' + routeSegment + '</b><br>';
                            summaryPanel.innerHTML += route.legs[i].start_address + ' to ';
                            summaryPanel.innerHTML += route.legs[i].end_address + '<br>';
                            summaryPanel.innerHTML += route.legs[i].distance.text + '<br><br>';
                        }
                    }
                });
            }

            $(document).ready(function () {
                initGoogleMap();
            });
        }());
    </script>
</asp:Content>

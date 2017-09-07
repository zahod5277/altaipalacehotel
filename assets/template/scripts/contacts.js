function initMapContacts() {

        var uluru = {lat: 50.630108, lng: 19.6625853};
        var mapContacts = new google.maps.Map(document.getElementById('mapcontacts'), {
          zoom: 15,
          center: uluru,
          disableDefaultUI: true,
          scrollwheel: false
        });
        var markerContacts = new google.maps.Marker({
          position: uluru,
          map: mapContacts,
          icon: 'assets/images/pin-icon-big.png'
        });


}

initMapContacts()

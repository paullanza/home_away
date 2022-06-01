import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    participationsMarkers: Array
  }

  connect() {
  //   console.log(this.markersValue) // These two lines were here for testing
  //   console.log(this.participationsMarkersValue.length)
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkersToMap(this.markersValue)
    this.#fitMapToMarkers(this.markersValue)
    if (this.participationsMarkersValue.length > 0) {
      // console.log('CONNECTED') // This was for testing as well
      this.#addMarkersToMap(this.participationsMarkersValue)
      this.#fitMapToMarkers(this.participationsMarkersValue)
    }
  }

  // Markers
  #addMarkersToMap(markers) {
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      // Uncomment l. 29 - 34 if image on the popup
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "25px"
      customMarker.style.height = "25px"

      // add customMarker as an argument in the next line to show the image in the popup
      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

  // Fit map to markers (Zoom In)
  #fitMapToMarkers(markers) {
    const bounds = new mapboxgl.LngLatBounds()
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}


// export default class extends Controller defines a JavaScript class
// this.variableName refers to an instance variable, available everywhere within the class
// this.element refers to the Stimulus controller’s HTML element instance variable

// private method in JavaScript are prepend with a #

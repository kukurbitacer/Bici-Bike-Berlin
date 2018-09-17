const buttonTrue = document.getElementById("booking_bike_true");
const buttonFalse = document.getElementById("booking_bike_false");

const toggleBike = (button, style) => {
  button.addEventListener('change', (event) => {
    if (button.checked) {
      document.querySelector('.bike-number-container').style.display = style;
    }
  });
};

if (buttonTrue) {
  toggleBike(buttonTrue, "block");
  toggleBike(buttonFalse, "none");
}

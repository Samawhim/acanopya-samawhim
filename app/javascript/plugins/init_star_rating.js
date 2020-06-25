import "jquery-bar-rating"
import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

const initStarRating = () => {
  $('#flat_review_rating').barrating({
    theme: 'css-stars',
    onSelect: (value, text, event) => {
      const form = $("form.new_flat_review"); // We are selecting the form on the page with its class
      form.submit(); // We submit the form with javascript
    }
  });
  $('#restaurant_review_rating').barrating({
    theme: 'css-stars',
    onSelect: (value, text, event) => {
      const form = $("form.new_restaurant_review"); // We are selecting the form on the page with its class
      form.submit(); // We submit the form with javascript
    }
  });
  $('#activity_review_rating').barrating({
    theme: 'css-stars',
    onSelect: (value, text, event) => {
      const form = $("form.new_activity_review"); // We are selecting the form on the page with its class
      form.submit(); // We submit the form with javascript
    }
  });

};

export { initStarRating };

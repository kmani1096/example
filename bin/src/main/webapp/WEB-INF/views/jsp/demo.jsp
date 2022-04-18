<!DOCTYPE html>
<html lang="en">
  <head>
    <script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <!-- HTML-->
    <form id="contact-form">
      <label for="name">Name</label>
      <input type="text" id="name" name="name" placeholder="Name" required="" />
      <label for="message">Message</label>
      <textarea
        id="message"
        name="message"
        placeholder="Message"
        required></textarea>
        
      <button type="submit">Send</button>
    </form>

    <!-- JavaScript -->
    <script>
      function convertFormToJSON(form) {
        const array = $(form).serializeArray(); // Encodes the set of form elements as an array of names and values.
        const json = {};
        $.each(array, function () {
          json[this.name] = this.value || "";
        });
        return json;
      }

      $("#contact-form").on("submit", function (e) {
        e.preventDefault();
        const form = $(e.target);
        const json = convertFormToJSON(form);
        console.log(json);
      });
    </script>
  </body>
</html>

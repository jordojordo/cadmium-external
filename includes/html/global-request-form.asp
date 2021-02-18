<head>
  <script src="https://www.google.com/recaptcha/api.js?render=6LfLRdMUAAAAANgyQM6fmkOVX8-vuAD-0P7_X37q"></script>
  <script>
    grecaptcha.ready(function() {
        grecaptcha.execute('6LfLRdMUAAAAANgyQM6fmkOVX8-vuAD-0P7_X37q', {action: 'validate_captcha'}).then(function(token) {
          document.getElementById('g-recaptcha-response').value = token;
        });
		});
		function handleSubmit(event) {
      grecaptcha.execute('6LfLRdMUAAAAANgyQM6fmkOVX8-vuAD-0P7_X37q', {action: 'validate_captcha'}).then(function(token) {
        document.getElementById('g-recaptcha-response').value = token;
      });
    };
  </script>
</head>

<div class="container-fluid request-info__background">

	<!-- Container -->
	<div class="container py-5 p-sm-5 d-flex flex-column justify-content-center align-items-center">
		
		<div class="row justify-content-center align-items-center my-sm-2 pt-5 p-sm-4 mx-0 my-4">
      <h2 class="h2 color__off-white font-weight-bold">
        Take the Next Step
      </h2>
    </div>
    
    <!-- contactCard -->
    <div id="contactCard" class="card ">

      <!--Card content-->
      <div class="p-3">

        <!-- Form -->
        <form 
          class="contact-card visible needs-validation text-center py-3" 
          id="contactForm" 
          action="/contact/forms/request_info.asp" 
          method="POST" 
          data-event="formSubmissionContact"
        >

          <!-- reCaptcha -->
          <div class="form-row justify-content-center">
            <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
            <input type="hidden" name="action" value="validate_captcha">
          </div>
          
          <!-- Name -->
          <div class="form-row">

            <div class="col">

              <div class="md-form">
                <input name="7ddf32e17a6ac5ce04a8ecbf782ca509" type="text" value=" " style="position: absolute; z-index: -1;" autocomplete="off">
                <input type="text" id="FirstName" value="" name="FirstName" class="form-control" required>
                <label for="FirstName">First name</label>
              </div>
            </div>

            <div class="col">

              <div class="md-form">
                <input type="text" id="LastName" value="" name="LastName" class="form-control" required>
                <label for="LastName">Last name</label>
              </div>

            </div>

          </div>

          <!-- Company & Job Title -->
          <div class="form-row">

            <div class="col">
              <div class="md-form">
                <input type="text" id="Company" value="" name="Company" class="form-control" required>
                <label for="Company">Company</label>
              </div>
            </div>

            <div class="col">
              <div class="md-form">
                <input type="text" id="Job" value="" name="Job" class="form-control">
                <label for="Job">Job Title</label>
              </div>
            </div>

          </div>

          <!-- E-mail & Phone -->
          <div class="form-row">

            <div class="col">
              <div class="md-form">
                <input type="email" id="0c83f57c786a0b4a39efab23731c7ebc" value="" name="0c83f57c786a0b4a39efab23731c7ebc" class="form-control" required>
                <label for="0c83f57c786a0b4a39efab23731c7ebc">E-mail</label>
              </div>
            </div>

            <div class="col">
              <div class="md-form">
                <input type="tel" id="Telephone" value="" name="Telephone" class="form-control" aria-describedby="materialRegisterFormPhoneHelpBlock" maxlength="12" required>
                <label for="Telephone">Phone number</label>
              </div>
            </div>

          </div>

          <!-- Dropdowns -->
          <div class="form-row">

            <!-- Designation select-->
            <div class="col-12">
              <select class="mdb-select md-form colorful-select dropdown-primary initialized" id="designation" name="designation" required>
                <option value="" disabled selected>
                  How would you describe your business?
                </option>
                <option class="request-info__form-dropdown-item" value="association">
                  Association
                </option>
                <option class="request-info__form-dropdown-item" value="association managment company">
                  Association Management Company
                </option>
                <option class="request-info__form-dropdown-item" value="audio visual company">
                  Audio Visual Company
                </option>
                <option class="request-info__form-dropdown-item" value="consulting">
                  Consulting
                </option>
                <option class="request-info__form-dropdown-item" value="continuing medical education (cme)">
                  Continuing Medical Education (CME)
                </option>
                <option class="request-info__form-dropdown-item" value="education institution">
                  Education Institution
                </option>
                <option class="request-info__form-dropdown-item" value="corporation">
                  Corporation
                </option>
                <option class="request-info__form-dropdown-item" value="education">
                  Foundation
                </option>
                <option class="request-info__form-dropdown-item" value="government">
                  Government
                </option>
                <option class="request-info__form-dropdown-item" value="hospital">
                  Hospital
                </option>
                <option class="request-info__form-dropdown-item" value="marketing / public relations">
                  Marketing/ Public Relations
                </option>
                <option class="request-info__form-dropdown-item" value="meeting planning">
                  Meeting Planning
                </option>
                <option class="request-info__form-dropdown-item" value="non profit">
                  Non Profit
                </option>
                <option class="request-info__form-dropdown-item" value="technology parnter">
                  Technology Partner
                </option>
                <option class="request-info__form-dropdown-item" value="university">
                  University
                </option>
                <option class="request-info__form-dropdown-item" value="users group">
                  Users Group
                </option>
                <option class="request-info__form-dropdown-item" value="other">
                  Other
                </option>
              </select>
              <!--/Designation select-->

            </div>

            <!-- Events select-->
            <div class="col-12">
              <select class="mdb-select md-form colorful-select dropdown-primary" id="events" name="events" required>
                <option value="" disabled selected>How many events do you organize per year?</option>
                <option class="request-info__form-dropdown-item" value="1-10">1 - 10</option>
                <option class="request-info__form-dropdown-item" value="10-15">10 - 15</option>
                <option class="request-info__form-dropdown-item" value="15-20">15 - 20</option>
                <option class="request-info__form-dropdown-item" value="20-50">20 - 50</option>
                <option class="request-info__form-dropdown-item" value="50">50 +</option>
              </select>
            </div>

          </div>
          <!-- /Dropdowns -->

          <!--Message-->
          <div class="md-form">
            <textarea id="Comments" name="Comments" class="form-control md-textarea" rows="3" required></textarea>
            <label for="Comments">Message</label>
          </div>

          <!-- Check -->
          <div class="form-row justify-content-center">
            <div class="md-form pb-3">
              <div class="text-justify">
                <input type="checkbox" class="form-check-input" id="newsletter" name="newsletter" value="Yes" required>
                <label class="form-check-label" for="newsletter">
                  I agree to CadmiumCD's 
                  <a href="https://cadmiumcd.com/cadmiumcd/privacy.asp">Privacy Policy</a> 
                  and acknowledge that I may 
                  <a href="https://cadmiumcd.com/mydata">unsubscribe</a> 
                  at anytime.
                </label>
              </div>
            </div>
          </div>

          <input type="hidden" name="WebsiteSource" id="WebsiteSource" value="<% =Request.ServerVariables("HTTP_REFERER") %>">

          <!-- Send button -->
          <button
            class="btn custom-btn__1 my-2 my-sm-0 mx-0 text-capitalize rounded px-5 py-4 waves-effect waves-light z-depth-0"
            type="submit"
            id="submitBtn"
            onclick=handleSubmit()
          >
            Request Info
          </button>

          <p class="request-info__hidden my-2 py-2" id="returnMessage"></p>
          <p class="request-info__hidden my-2 py-2" id="returnMessageExt"></p>

        </form>
        <!-- /Form -->

      </div>
      <!-- /Card content -->

    </div>
    <!-- /contactCard -->

    <!-- After form submits -->
    <!-- #include virtual="/global/includes/html/global-request-form__message.asp" -->

	</div>
	<!-- /Container -->

</div>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="TemplatePage.WebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="homesection" id="Home">
    <div class="container py-5">
      <div class="row">
        <div class="col-md-6">
          <div class="pt-5">
            <h1 class="display-3 pt-5 font-weight-bold text-light luxuryText text-uppercase">Beat the Heat During the Extremely Hot Summer!</h1>
          </div>
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-4">
          <div class="card rounded-0 customForm">
            <div class="card-body">
              <h4>Let Us Call You!</h4>
              <span>To help you choose your property</span>

              <form runat="server">
                <div class="form-group">
                  <label for="exampleInputEmail1">Full Name</label>
                  <input type="text" class="form-control rounded-0" name="fname" required>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Email</label>
                  <input type="text" class="form-control rounded-0" name="email">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Phone Number</label>
                  <input type="text" class="form-control rounded-0" name="phone" required>
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Location</label>
                  <textarea type="text" class="form-control rounded-0" name="address" required></textarea>
                </div>
                  <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-block btn-primary rounded-0" OnClick="submitForm"/>
                  <asp:Label ID="Label1" runat="server"></asp:Label>
              </form>
                
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>

  <div class="aboutSection mt-2" id="About">
    <div class="container">
      <div class="row">
        <div class="col-md-7">
          <div class="aboutText ">
            <h1 class="luxuryText font-weight-bolder aboutMargin">ABOUT US</h1>
            <p class="text-justify">As a prominent leader in the service market, We Cool Hight, situated at Jogeshwari
              West, Mumbai, Maharashtra provide a wide range of services to enhance the cooling of the world. We focus
              on installations, preventive measures, repairs and maintenance for domestic and industrial customers. The
              company has jump started its business and has made a distinguished name for itself with its
              record-breaking, all-encompassing and delightful services.</p>

          </div>
        </div>
        <div class="col-md-5">
          <img src="Content/Files/product-jpeg-500x500.jpg" class="img-fluid pt-5">
        </div>
      </div>
    </div>
  </div>



  <div class="ListingSection mt-2" id="property">
    <div class="container py-5">
<div class="row">
  <div class="col-md-7">
    <h2  class="mb-4 luxuryText font-weight-bolder"><span class="text-white">Enjoy the Benefits of Keeping Cool at</span> <span class="text-warning">Your Home</span></h2>
  </div>
  <div class="col-md-4">
   <a class="btn btn-warning py-3 rounded-0 btnlg btn-block mt-3" href="tel:8286759323">  <i class="fas fa-phone-alt"></i> Call Now</a>
  </div>
</div>
    </div>

  </div>



  <div class="serviceSection" id="Service">
    <div class="container py-5">
      <h1 class="text-dark font-weight-bolder border-bottom mb-3">Services We Provide</h1>

      <div class="row">
        <div class="col-md-3">
          <div class="card">
            <img src="Content/Files/ac-installation-.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">AC Installation</h5>
              <p class="card-text text-justify">Get your air conditioner installed in the most professional manner from our company.</p>
              <div class="text-center">
                <a href="#" class="btn btn-primary btn-block btn-lg">Enquire Now</a>
              </div>
            </div>
          </div>
        </div>
      
        
        <div class="col-md-3">
          <div class="card">
            <img src="Content/Files/repairman-uniform-installing-outside-unit-air-conditioner_93675-91162.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">AC Repairs</h5>
              <p  class="card-text text-justify">Our AC repairing services will solve all minor & major problems of your AC in the best way.</p>
              <div class="text-center">
                <a href="#" class="btn btn-primary btn-block btn-lg">Enquire Now</a>
              </div>
            </div>
          </div>
        </div>
        
        
        <div class="col-md-3">
          <div class="card ">
            <img src="Content/Files/Refrigerator.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">Refrigerator Repair</h5>
              <p  class="card-text text-justify">Our Refrigerator repairing services will solve all minor & major problems of your Refrigerator in the best way.</p>
              <div class="text-center  mt-4">
                <a href="#" class="btn btn-primary btn-block btn-lg">Enquire Now</a>
              </div>
            </div>
          </div>
        </div>
        
        
        <div class="col-md-3">
          <div class="card">
            <img src="Content/Files/acoart.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">AC Spare Parts</h5>
              <p  class="card-text text-justify"> We also provide original AC spare parts to meet the requirements of our customers.</p>
              <div class="text-center">
                <a href="#" class="btn btn-primary btn-block btn-lg">Enquire Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>

  


    </div>
  </div>


  <div class="contactForm mt-2" id="Contact">
    <div class="container py-5">
      <h1 class="mb-4 luxuryText font-weight-bolder">CONTACT US</h1>
      <div class="row">
        <div class="col-md-6">
          <div class="card rounded-0">
            <div class="card-body text-center contactcard_icon">
              <h4>Our Address</h4>
              <i class="fas fa-map-marker-alt"></i>
              <p>Shop No 24 Room, No 5, Swami Vivekananda Rd, Momin Nagar, Jogeshwari West, Mumbai, Maharashtra 400102</p>
            </div>
          </div>

          <div class="row mt-3">
            <div class="col-md-6">
              <div class="card rounded-0">
                <div class="card-body text-center contactcard_icon">
                  <h4>Email Us</h4>
                  <i class="fas fa-envelope"></i>
                  <p>coolhightss@gmail.com</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 calspacing">
              <div class="card rounded-0">
                <div class="card-body text-center contactcard_icon">
                  <h4>Call Us</h4>
                  <i class="fas fa-phone-alt"></i>
                  <p>+91 82867 59323</p>
                </div>
              </div>
            </div>
          </div>

        </div>
        <div class="col-md-6 calspacing">
          <div class="card rounded-0">
            <div class="card-body">
              <form action="mail.php" method="post">
                <div class="form-row">
                  <div class="form-group col-md-6">
                    <label for="inputEmail4">Full Name</label>
                    <input type="email" class="form-control rounded-0" name="fname" placeholder="Enter Your Name"
                      required>
                  </div>
                  <div class="form-group col-md-6">
                    <label for="inputPassword4">Email</label>
                    <input type="password" class="form-control rounded-0" name="email" placeholder="Enter Your Email"
                      required>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputAddress">Phone Number</label>
                  <input type="text" class="form-control rounded-0" name="phone" placeholder="Enter Phone Number"
                    required>
                </div>
                <div class="form-group">
                  <label for="inputAddress2">Address</label>
                  <textarea type="text" class="form-control rounded-0" name="address" placeholder="Enter Your Address"
                    required></textarea>
                </div>


                <input type="submit" class="btn btn-primary btn-lg btn-block rounded-0" name="contactform"
                  value="Enquire Now">
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>


<div class="calltoaction bg-warning">
  <div class="container py-3">
    <div class="row">
      <div class="col-md-6">
        <h3>We help you to get your AC fixed today!</h3>
      </div>
      <div class="col-md-6">
        <h3 class="text-right text-light">+91 82867 59323</h3>
      </div>
    </div>
  </div>
</div>


</asp:Content>

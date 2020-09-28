<%@ Page Title="Department" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="Department" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <style>
.heading{
    text-transform:capitalize;
    color:black;
    font-weight:bold;
    font-size:24px;
}
.content{
    font-size:20px;
    color:black;
}
</style>
   
        <div class="hero-wrap" style="background-image: url('image/bg_6.jpg'); background-attachment:fixed;">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center" data-scrollax-parent="true">
                <div class="col-md-8 ftco-animate text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Departments</span></p>
                    <h1 class="mb-3 bread">Departments</h1>
                </div>
            </div>
        </div>
    </div>
		<section class="ftco-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-4 col-lg-4 col-mb-3">
                    <img src="image/dept-1.png"  class="img-fluid">

                    <h3 class="heading">Anaesthetic Department</h3>
                    <p class="content">Doctors in this department give anaesthetic for operations.<br>They are responsible for the provision of:</p>
                    <ul class="content">
                        <li>- Acute pain services (pain relief after an operation).</li>
                        <li>- Chronic pain services (pain relief in long-term conditions such as arthritis).</li>
                        <li>- Critical care services (pain relief for those who have had a serious accident or trauma).</li>
                        <li>- Obstetric anaesthesia and analgesia (epidurals in childbirth and anaesthetic for Caesarean sections).</li>
                    </ul>
                </div>
                <div class="col-md-4  col-lg-4 col-mb-3">
                    <img src="image/dept-2.jpg"  class="img-fluid">

                    <h3 class="heading">Cardiology Department</h3>
                    <p class="content">
                        Term watch
                        Outpatient: short visit to hospital that lasts no more than a day.<br />
                        Inpatient: hospital visit that requires at least one night's stay on a ward.<br />
                        This department provides medical care to patients who have problems with their heart or circulation. It treats people on an inpatient and outpatient basis.
                        <br />
                        Typical procedures performed include:
                    </p>
                    <ol class="content">
                        <li>- Electrocardiogram (ECG) and exercise tests to measure heart function</li>
                        <li>- Echocardiograms (ultrasound scan of the heart)</li>
                    </ol>
                </div>
        <div class="col-md-4  col-lg-4 col-mb-3">
            <img src="image/ent.jpg"  class="img-fluid">
           
                <h3 class="heading">Ear nose and throat (ENT)</h3>
                <p class="content">The ENT department provides care for patients with a variety of problems, including:</p>
                <ol class="content">
                    <li>- General ear, nose and throat diseases</li>
                    <li>- Neck lumps</li>
                    <li>- Cancers of the head and neck area</li>
                    <li>- Tear duct problems</li>
                    <li>- Facial skin lesions</li>
                    <li>- Balance and hearing disorders</li>
                    <li>- Snoring and sleep apnoea</li>
                    <li>- ENT allergy problems</li>
                    <li>- Salivary gland diseases</li>
                    <li>- Voice disorders.</li>
                </ol>
        </div>
      
            <div class="col-md-4 col-lg-4 col-mb-3">
                <img src="image/gyno.jpg" class="img-fluid">
                <h3 class="heading">>Gynaecology Department</h3>
                <p class="content">These departments investigate and treat problems of the female urinary tract and reproductive organs, such as endometritis, infertility and incontinence.They also provide a range of care for cervical smear screening and post-menopausal bleeding checks.<br />They usually have:</p>
                <ol class="content">
                    <li>- A specialist ward</li>
                    <li>- Day surgery unit</li>
                </ol>
            </div>
  
            <div class="col-md-4 col-lg-4 col-mb-3">
                <img src="image/maternity.jpg" class="img-fluid">
                <h3 class="heading">Maternity Department</h3>
                <p class="content">Women now have a choice of who leads their maternity care and where they give birth. Care can be led by a consultant, a GP or a midwife.Maternity wards provide antenatal care, care during childbirth and postnatal support.Antenatal clinics provide monitoring for both routine and complicated pregnancies.High-dependency units can offer one-to-one care for women who need close monitoring when there are complications in pregnancy or childbirth.</p>
            </div>
            <div class="col-md-4 col-lg-4 col-mb-3">
                <img src="image/nephrology.jpg" class="img-fluid">
                <h3 class="heading">Nephrology Department</h3>
                <p class="content">This department monitors and assesses patients with kidney (renal) problems.Nephrologists (kidney specialists) will liaise with the transplant team in cases of kidney transplants.They also supervise the dialysis day unit for people who are waiting for a kidney transplant or who are unable to have a transplant for any reason.</p>
            </div>
         
            <div class="col-md-4 col-lg-4 col-mb-3">
                <img src="image/neurology.jpg" class="img-fluid">
                <h3 class="heading">Neurology Department</h3>
                <p class="content">This unit deals with disorders of the nervous system, including the brain and spinal cord. It's run by doctors who specialise in this area (neurologists) and their staff.There are also paediatric neurologists who treat children. Neurologists may also be involved in clinical research and clinical trials.Specialist nurses (epilepsy, multiple sclerosis) liaise with patients, consultants and GPs to help with any problems that may occur between outpatient appointments.</p>
            </div>
        
            <div class="col-md-4 col-lg-4 col-mb-3">
                <img src="image/eye.jpg" class="img-fluid">
                <h3 class="heading">Ophthalmology Department</h3>
                <p class="content">Eye departments provide a range of ophthalmic services for adults and children, including:</p>
                <ol class="content">
                    <li>- General eye clinic appointments</li>
                    <li>- Laser treatments</li>
                    <li>- Optometry (sight testing)</li>
                    <li>- Orthoptics (non-surgical treatments, eg for squints)</li>
                    <li>- Prosthetic eye services</li>
                    <li>- Ophthalmic imaging (eye scans)</li>
                </ol>
            </div>
          <div class="col-md-4 col-lg-4 col-mb-3">
                <img src="image/orthopedic.jpg" class="img-fluid">
                <h3 class="heading">Orthopaedics Department</h3>
                <p class="content">Orthopaedic departments treat problems that affect your musculoskeletal system. That's your muscles, joints, bones, ligaments, tendons and nerves.The doctors and nurses who run this department deal with everything from setting bone fractures to carrying out surgery to correct problems such as torn ligaments and hip replacements.Orthopaedic trauma includes fractures and dislocations as well as musculoskeletal injuries to soft tissues.</p>
            </div>
            </div>
        </div>
    </section>
    <div class="clear">
	</div>
    </asp:Content>
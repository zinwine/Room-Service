@extends('Admin.views.master')
@section('Content')
  <section id="main-content">
        <section class="wrapper">
          <div class="row">
            <div class="col-lg-9 main-chart">
            </div>
            <!-- /col-lg-9 END SECTION MIDDLE -->
            <!-- **********************************************************************************************************************************************************
                RIGHT SIDEBAR CONTENT
                *********************************************************************************************************************************************************** -->
            <div class="col-lg-3 ds">
              <!--COMPLETED ACTIONS DONUTS CHART-->
              <div class="donut-main">
                <h4>COMPLETED ACTIONS & PROGRESS</h4>
              </div>
              <!--NEW EARNING STATS -->
              <div class="panel terques-chart">
                <div class="panel-body">
                  <div class="chart">
                    <div class="centered">
                      <span>TODAY EARNINGS</span>
                      <strong>$ 890,00 | 15%</strong>
                    </div>
                    <br>
                    <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,564,455]"></div>
                  </div>
                </div>
              </div>
              <!--new earning end-->
              <!-- RECENT ACTIVITIES SECTION -->
              <h4 class="centered mt">RECENT ACTIVITY</h4>
              <!-- First Activity -->
              <div class="desc">
                <div class="thumb">
                  <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                </div>
                <div class="details">
                  <p>
                    <muted>Just Now</muted>
                    <br/>
                    <a href="#">Paul Rudd</a> purchased an item.<br/>
                  </p>
                </div>
              </div>
              <!-- Second Activity -->
              <div class="desc">
                <div class="thumb">
                  <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                </div>
                <div class="details">
                  <p>
                    <muted>2 Minutes Ago</muted>
                    <br/>
                    <a href="#">James Brown</a> subscribed to your newsletter.<br/>
                  </p>
                </div>
              </div>
              <!-- Third Activity -->
              <div class="desc">
                <div class="thumb">
                  <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                </div>
                <div class="details">
                  <p>
                    <muted>3 Hours Ago</muted>
                    <br/>
                    <a href="#">Diana Kennedy</a> purchased a year subscription.<br/>
                  </p>
                </div>
              </div>
              <!-- Fourth Activity -->
              <div class="desc">
                <div class="thumb">
                  <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
                </div>
                <div class="details">
                  <p>
                    <muted>7 Hours Ago</muted>
                    <br/>
                    <a href="#">Brando Page</a> purchased a year subscription.<br/>
                  </p>
                </div>
              </div>
            </div>
            <!-- /col-lg-3 -->
          </div>
          <!-- /row -->
        </section>
  </section>
@endsection
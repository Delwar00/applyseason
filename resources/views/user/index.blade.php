@extends('layouts.user')


@section('header')

@php
	$Block_Data1=\App\Model\HomePage::whereid('1')->get();

@endphp
@foreach($Block_Data1 as $block1)
<div class="hero-wrap js-fullheight" style="background-image: url('{{ asset('/page_content/'.$block1->slide_imge) }}');" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
      <div class="col-xl-10 ftco-animate mb-5 pb-5" data-scrollax=" properties: { translateY: '70%' }">
        <p class="mb-4 mt-5 pt-5" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">We have <span class="number" data-number="850000">0</span> great job offers you deserve!</p>
        <h1 class="mb-5" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">{{ $block1->slide_title }}</h1>
@endforeach
        <div class="ftco-search">
          <div class="row">
            <div class="col-md-12 nav-link-wrap">
              <div class="nav nav-pills text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <a class="nav-link active mr-md-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Find a Job</a>

                <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Find a Candidate</a>

              </div>
            </div>
            <div class="col-md-12 tab-wrap">
              
              <div class="tab-content p-4" id="v-pills-tabContent">

                <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-nextgen-tab">
                  <form action="{{url('/search-job')}}" method="get" class="search-job">
                    <div class="row">
                      <div class="col-md">
                        <div class="form-group">
                          <div class="form-field">
                            <div class="icon"><span class="icon-briefcase"></span></div>
                            <input type="text" class="form-control" name="keyword" placeholder="eg. Garphic. Web Developer">
                          </div>
                        </div>
                      </div>
                      <!-- <div class="col-md">
                        <div class="form-group">
                          <div class="form-field">
                            <div class="select-wrap">
                              <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                              <select name="" id="" class="form-control">
                                <option value="">Category</option>
                                <option value="">Full Time</option>
                                <option value="">Part Time</option>
                                <option value="">Freelance</option>
                                <option value="">Internship</option>
                                <option value="">Temporary</option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div> -->
                      <div class="col-md">
                        <div class="form-group">
                          <div class="form-field">
                            <div class="icon"><span class="icon-map-marker"></span></div>
                            <input type="text" class="form-control" placeholder="Location">
                          </div>
                        </div>
                      </div>
                      <div class="col-md">
                        <div class="form-group">
                          <div class="form-field">
                            <input type="submit" value="Search" class="form-control btn btn-primary">
                          </div>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>

                <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-performance-tab">
                  <form action="#" class="search-job">
                    <div class="row">
                      <div class="col-md">
                        <div class="form-group">
                          <div class="form-field">
                            <div class="icon"><span class="icon-user"></span></div>
                            <input type="text" class="form-control" placeholder="eg. Adam Scott">
                          </div>
                        </div>
                      </div>
                      <!-- <div class="col-md">
                        <div class="form-group">
                          <div class="form-field">
                            <div class="select-wrap">
                              <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                              <select name="" id="" class="form-control">
                                <option value="">Category</option>
                                <option value="">Full Time</option>
                                <option value="">Part Time</option>
                                <option value="">Freelance</option>
                                <option value="">Internship</option>
                                <option value="">Temporary</option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div> -->
                      <div class="col-md">
                        <div class="form-group">
                          <div class="form-field">
                            <div class="icon"><span class="icon-map-marker"></span></div>
                            <input type="text" class="form-control" placeholder="Location">
                          </div>
                        </div>
                      </div>
                      <div class="col-md">
                        <div class="form-group">
                          <div class="form-field">
                            <input type="submit" value="Search" class="form-control btn btn-primary">
                          </div>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection

@section('main_content')
<section class="ftco-section services-section bg-light">
  <div class="container">
    <div class="row d-flex">
      <div class="col-md-3 d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services d-block">
          <div class="icon"><span class="flaticon-resume"></span></div>
          <div class="media-body">
            <h3 class="heading mb-3">Search Millions of Jobs</h3>
            <p>A small river named Duden flows by their place and supplies.</p>
          </div>
        </div>      
      </div>
      <div class="col-md-3 d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services d-block">
          <div class="icon"><span class="flaticon-collaboration"></span></div>
          <div class="media-body">
            <h3 class="heading mb-3">Easy To Manage Jobs</h3>
            <p>A small river named Duden flows by their place and supplies.</p>
          </div>
        </div>    
      </div>
      <div class="col-md-3 d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services d-block">
          <div class="icon"><span class="flaticon-promotions"></span></div>
          <div class="media-body">
            <h3 class="heading mb-3">Top Careers</h3>
            <p>A small river named Duden flows by their place and supplies.</p>
          </div>
        </div>      
      </div>
      <div class="col-md-3 d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services d-block">
          <div class="icon"><span class="flaticon-employee"></span></div>
          <div class="media-body">
            <h3 class="heading mb-3">Search Expert Candidates</h3>
            <p>A small river named Duden flows by their place and supplies.</p>
          </div>
        </div>      
      </div>
    </div>
  </div>
</section>

{{--<section class="ftco-section ftco-counter">--}}
{{--  <div class="container">--}}
{{--    <div class="row justify-content-center mb-5 pb-3">--}}
{{--      <div class="col-md-7 heading-section text-center ftco-animate">--}}
{{--        <span class="subheading">Categories work wating for you</span>--}}
{{--        <h2 class="mb-4"><span>Current</span> Job Posts</h2>--}}
{{--      </div>--}}
{{--    </div>--}}
{{--    <div class="row">--}}
{{--      <div class="col-md-3 ftco-animate">--}}
{{--        <ul class="category">--}}
{{--          <li><a href="#">Web Development <span class="number" data-number="1000">0</span></a></li>--}}
{{--          <li><a href="#">Graphic Designer <span class="number" data-number="1000">0</span></a></li>--}}
{{--          <li><a href="#">Multimedia <span class="number" data-number="2000">0</span></a></li>--}}
{{--          <li><a href="#">Advertising <span class="number" data-number="900">0</span></a></li>--}}
{{--        </ul>--}}
{{--      </div>--}}
{{--      <div class="col-md-3 ftco-animate">--}}
{{--        <ul class="category">--}}
{{--          <li><a href="#">Education &amp; Training <span class="number" data-number="3500">0</span></a></li>--}}
{{--          <li><a href="#">English <span class="number" data-number="1560">0</span></a></li>--}}
{{--          <li><a href="#">Social Media <span class="number" data-number="1000">0</span></a></li>--}}
{{--          <li><a href="#">Writing <span class="number" data-number="2500">0</span></a></li>--}}
{{--        </ul>--}}
{{--      </div>--}}
{{--      <div class="col-md-3 ftco-animate">--}}
{{--        <ul class="category">--}}
{{--          <li><a href="#">PHP Programming <span class="number" data-number="5500">0</span></a></li>--}}
{{--          <li><a href="#">Project Management <span class="number" data-number="2000">0</span></a></li>--}}
{{--          <li><a href="#">Finance Management <span class="number" data-number="800">0</span></a></li>--}}
{{--          <li><a href="#">Office &amp; Admin <span class="number" data-number="7000">0</span></a></li>--}}
{{--        </ul>--}}
{{--      </div>--}}
{{--      <div class="col-md-3 ftco-animate">--}}
{{--        <ul class="category">--}}
{{--          <li><a href="#">Web Designer <span><span class="number" data-number="8000">0</span></span></a></li>--}}
{{--          <li><a href="#">Customer Service <span class="number" data-number="4000">0</span></a></li>--}}
{{--          <li><a href="#">Marketing &amp; Sales <span class="number" data-number="3300">0</span></a></li>--}}
{{--          <li><a href="#">Software Development <span class="number" data-number="1356">0</span></a></li>--}}
{{--        </ul>--}}
{{--      </div>--}}
{{--    </div>--}}
{{--  </div>--}}
{{--</section>--}}

<section class="ftco-section bg-light listing-how-work" style="margin-bottom: 80px;margin-top: 0px;">
	<div class="container">
{{--		<div class="row justify-content-center mb-5 pb-3">--}}
{{--			<div class="col-md-7 heading-section text-center ftco-animate">--}}
{{--				<span class="subheading">Recently Added Jobs</span>--}}
{{--				<h2 class="mb-4"><span>Recent</span> Jobs</h2>--}}
{{--			</div>--}}
{{--		</div>--}}
		<style>
			.section-title {
				margin-bottom: 40px;
				position: relative;
			}

			.text-center {
				text-align: center!important;
			}
			.listing-how-work h2 {
				font-size: 32px;
				font-style: normal;
				font-weight: 600;
				line-height: 38px;
			}
			.section-title p {
				margin-bottom: 0px;
				font-size: 20px;
				font-weight: 400;
			}


			.listing-how-work p {
				font-weight: normal;
				line-height: 1.5;
				color: #626262;
			}
			.feature-text {
				text-align: center;
			}

			.shadow {
				box-shadow: none !important;
			}
			.mb-15 {
				margin-bottom: 15px !important;
			}
			.listing-how-work h4 {
				font-size: 22px;
				font-style: normal;
				font-weight: 500;
				line-height: 26px;
			}
			.listing-how-work {
				/*position: relative;*/
				background: #ffffff !important;
				/*box-shadow: 0 0 40px rgba(0, 0, 0, 0.15);*/
				/*box-shadow: 12px 0 5px -4px  rgba(0, 0, 0, 0.05), -12px 0 8px -4px  rgba(0, 0, 0, 0.05);*/
				box-shadow: 0px !important;
				padding: 70px;
				/*margin-top: -140px;*/
			}
			.theme-color{
				color: #84ba3f;
			}
		</style>
		<div class="row">
			<div class="col-12">
				<div class="">
					<div class="row justify-content-center">
						<div class="col-lg-8">
							<div class="section-title text-center">
								<h2><span class="theme-color"> How it </span> works?</h2>
								<p>If success is a process with a number of defined steps, then it is just like any other process. So, what is the first step in any process?</p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-4 sm-mb-30">
							<div class="feature-text round shadow">
								<div class="feature-icon">
									<span class="fa fa-globe"></span>
								</div>
								<div class="feature-info">
									<h4 class="mb-15">Find Interesting Place</h4>
									<p>Without clarity, you send a very garbled message out to the Universe. </p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 sm-mb-30">
							<div class="feature-text round shadow">
								<div class="feature-icon">
									<span class="fa fa-cogs"></span>
								</div>
								<div class="feature-info">
									<h4 class="mb-15">Choose a Category</h4>
									<p>We know that the Law of Attraction says that we will attract what.</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div class="feature-text round shadow">
								<div class="feature-icon">
									<span class="fa fa-map-marker"></span>
								</div>
								<div class="feature-info">
									<h4 class="mb-15">Find Locations</h4>
									<p>we focus on, so if we don’t have clarity, we will attract confusion.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


{{--<section class="ftco-section bg-light">--}}
{{--  <div class="container">--}}
{{--    <div class="row justify-content-center mb-5 pb-3">--}}
{{--      <div class="col-md-7 heading-section text-center ftco-animate">--}}
{{--        <span class="subheading">Recently Added Jobs</span>--}}
{{--        <h2 class="mb-4"><span>Recent</span> Jobs</h2>--}}
{{--      </div>--}}
{{--    </div>--}}
{{--    <div class="row">--}}
{{--      <div class="col-md-12 ftco-animate">--}}
{{--        <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">--}}
{{--          <div class="mb-4 mb-md-0 mr-5">--}}
{{--            <div class="job-post-item-header d-flex align-items-center">--}}
{{--              <h2 class="mr-3 text-black h3">Frontend Development</h2>--}}
{{--              <div class="badge-wrap">--}}
{{--               <span class="bg-primary text-white badge py-2 px-3">Partime</span>--}}
{{--              </div>--}}
{{--            </div>--}}
{{--            <div class="job-post-item-body d-block d-md-flex">--}}
{{--              <div class="mr-3"><span class="icon-layers"></span> <a href="#">Facebook, Inc.</a></div>--}}
{{--              <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>--}}
{{--            </div>--}}
{{--          </div>--}}
{{--          <div class="ml-auto d-flex">--}}
{{--            <a href="job-single.html" class="btn btn-primary py-2 mr-1">Apply Job</a>--}}
{{--            <a href="#" class="btn btn-secondary rounded-circle btn-favorite d-flex align-items-center icon">--}}
{{--              <span class="icon-heart"></span>--}}
{{--            </a>--}}
{{--          </div>--}}
{{--        </div>--}}
{{--      </div><!-- end -->--}}
{{--      <div class="col-md-12 ftco-animate">--}}
{{--        <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">--}}
{{--          <div class="mb-4 mb-md-0 mr-5">--}}
{{--           <div class="job-post-item-header d-flex align-items-center">--}}
{{--             <h2 class="mr-3 text-black h4">Full Stack Developer</h2>--}}
{{--             <div class="badge-wrap">--}}
{{--              <span class="bg-warning text-white badge py-2 px-3">Full Time</span>--}}
{{--             </div>--}}
{{--           </div>--}}
{{--           <div class="job-post-item-body d-block d-md-flex">--}}
{{--             <div class="mr-3"><span class="icon-layers"></span> <a href="#">Google, Inc.</a></div>--}}
{{--             <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>--}}
{{--           </div>--}}
{{--          </div>--}}
{{--          <div class="ml-auto d-flex">--}}
{{--            <a href="job-single.html" class="btn btn-primary py-2 mr-1">Apply Job</a>--}}
{{--            <a href="#" class="btn btn-danger rounded-circle btn-favorite d-flex align-items-center">--}}
{{--              <span class="icon-heart"></span>--}}
{{--            </a>--}}
{{--          </div>--}}
{{--        </div>--}}
{{--      </div> <!-- end -->--}}
{{--      <div class="col-md-12 ftco-animate">--}}
{{--       <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">--}}
{{--          <div class="mb-4 mb-md-0 mr-5">--}}
{{--           <div class="job-post-item-header d-flex align-items-center">--}}
{{--             <h2 class="mr-3 text-black h4">Open Source Interactive Developer</h2>--}}
{{--             <div class="badge-wrap">--}}
{{--              <span class="bg-info text-white badge py-2 px-3">Freelance</span>--}}
{{--             </div>--}}
{{--           </div>--}}
{{--           <div class="job-post-item-body d-block d-md-flex">--}}
{{--             <div class="mr-3"><span class="icon-layers"></span> <a href="#">New York Times</a></div>--}}
{{--             <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>--}}
{{--           </div>--}}
{{--          </div>--}}
{{--          --}}
{{--          <div class="ml-auto d-flex">--}}
{{--            <a href="job-single.html" class="btn btn-primary py-2 mr-1">Apply Job</a>--}}
{{--            <a href="#" class="btn btn-secondary rounded-circle btn-favorite d-flex align-items-center icon">--}}
{{--              <span class="icon-heart"></span>--}}
{{--            </a>--}}
{{--          </div>--}}
{{--       </div>--}}
{{--     </div> <!-- end -->--}}
{{--     <div class="col-md-12 ftco-animate">--}}
{{--       <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">--}}
{{--          <div class="mb-4 mb-md-0 mr-5">--}}
{{--           <div class="job-post-item-header d-flex align-items-center">--}}
{{--             <h2 class="mr-3 text-black h4">Frontend Development</h2>--}}
{{--             <div class="badge-wrap">--}}
{{--              <span class="bg-secondary text-white badge py-2 px-3">Internship</span>--}}
{{--             </div>--}}
{{--           </div>--}}
{{--           <div class="job-post-item-body d-block d-md-flex">--}}
{{--             <div class="mr-3"><span class="icon-layers"></span> <a href="#">Facebook, Inc.</a></div>--}}
{{--             <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>--}}
{{--           </div>--}}
{{--          </div>--}}
{{--          <div class="ml-auto d-flex">--}}
{{--            <a href="job-single.html" class="btn btn-primary py-2 mr-1">Apply Job</a>--}}
{{--            <a href="#" class="btn btn-secondary rounded-circle btn-favorite d-flex align-items-center icon">--}}
{{--              <span class="icon-heart"></span>--}}
{{--            </a>--}}
{{--          </div>--}}
{{--       </div>--}}
{{--     </div> <!-- end -->--}}
{{--     <div class="col-md-12 ftco-animate">--}}
{{--       <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">--}}
{{--          <div class="mb-4 mb-md-0 mr-5">--}}
{{--           <div class="job-post-item-header d-flex align-items-center">--}}
{{--             <h2 class="mr-3 text-black h4">Open Source Interactive Developer</h2>--}}
{{--             <div class="badge-wrap">--}}
{{--              <span class="bg-danger text-white badge py-2 px-3">Temporary</span>--}}
{{--             </div>--}}
{{--           </div>--}}
{{--           <div class="job-post-item-body d-block d-md-flex">--}}
{{--             <div class="mr-3"><span class="icon-layers"></span> <a href="#">New York Times</a></div>--}}
{{--             <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>--}}
{{--           </div>--}}
{{--          </div>--}}
{{--          --}}
{{--          <div class="ml-auto d-flex">--}}
{{--            <a href="job-single.html" class="btn btn-primary py-2 mr-1">Apply Job</a>--}}
{{--            <a href="#" class="btn btn-secondary rounded-circle btn-favorite d-flex align-items-center icon">--}}
{{--              <span class="icon-heart"></span>--}}
{{--            </a>--}}
{{--          </div>--}}
{{--       </div>--}}
{{--     </div> <!-- end -->--}}
{{--     <div class="col-md-12 ftco-animate">--}}

{{--        <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">--}}

{{--          <div class="mb-4 mb-md-0 mr-5">--}}
{{--            <div class="job-post-item-header d-flex align-items-center">--}}
{{--              <h2 class="mr-3 text-black h3">Frontend Development</h2>--}}
{{--              <div class="badge-wrap">--}}
{{--               <span class="bg-primary text-white badge py-2 px-3">Partime</span>--}}
{{--              </div>--}}
{{--            </div>--}}
{{--            <div class="job-post-item-body d-block d-md-flex">--}}
{{--              <div class="mr-3"><span class="icon-layers"></span> <a href="#">Facebook, Inc.</a></div>--}}
{{--              <div><span class="icon-map-marker"></span> <span>Western City, UK</span></div>--}}
{{--            </div>--}}
{{--          </div>--}}

{{--          <div class="ml-auto d-flex">--}}
{{--            <a href="job-single.html" class="btn btn-primary py-2 mr-1">Apply Job</a>--}}
{{--            <a href="#" class="btn btn-secondary rounded-circle btn-favorite d-flex align-items-center icon">--}}
{{--              <span class="icon-heart"></span>--}}
{{--            </a>--}}
{{--          </div>--}}
{{--        </div>--}}
{{--      </div><!-- end -->--}}

{{--      <div class="col-md-12 ftco-animate">--}}
{{--        <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">--}}

{{--          <div class="mb-4 mb-md-0 mr-5">--}}
{{--           <div class="job-post-item-header d-flex align-items-center">--}}
{{--             <h2 class="mr-3 text-black h4">Full Stack Developer</h2>--}}
{{--             <div class="badge-wrap">--}}
{{--              <span class="bg-warning text-white badge py-2 px-3">Full Time</span>--}}
{{--             </div>--}}
{{--           </div>--}}
{{--           <div class="job-post-item-body d-block d-md-flex">--}}
{{--             <div class="mr-3"><span class="icon-layers"></span> <a href="#">Google, Inc.</a></div>--}}
{{--             <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>--}}
{{--           </div>--}}
{{--          </div>--}}

{{--          <div class="ml-auto d-flex">--}}
{{--            <a href="job-single.html" class="btn btn-primary py-2 mr-1">Apply Job</a>--}}
{{--            <a href="#" class="btn btn-secondary rounded-circle btn-favorite d-flex align-items-center icon">--}}
{{--              <span class="icon-heart"></span>--}}
{{--            </a>--}}
{{--          </div>--}}

{{--        </div>--}}
{{--      </div> <!-- end -->--}}
{{--      <div class="col-md-12 ftco-animate">--}}
{{--       <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">--}}

{{--          <div class="mb-4 mb-md-0 mr-5">--}}
{{--           <div class="job-post-item-header d-flex align-items-center">--}}
{{--             <h2 class="mr-3 text-black h4">Open Source Interactive Developer</h2>--}}
{{--             <div class="badge-wrap">--}}
{{--              <span class="bg-info text-white badge py-2 px-3">Freelance</span>--}}
{{--             </div>--}}
{{--           </div>--}}
{{--           <div class="job-post-item-body d-block d-md-flex">--}}
{{--             <div class="mr-3"><span class="icon-layers"></span> <a href="#">New York Times</a></div>--}}
{{--             <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>--}}
{{--           </div>--}}
{{--          </div>--}}
{{--          --}}
{{--          <div class="ml-auto d-flex">--}}
{{--            <a href="job-single.html" class="btn btn-primary py-2 mr-1">Apply Job</a>--}}
{{--            <a href="#" class="btn btn-secondary rounded-circle btn-favorite d-flex align-items-center icon">--}}
{{--              <span class="icon-heart"></span>--}}
{{--            </a>--}}
{{--          </div>--}}
{{--       </div>--}}
{{--     </div> <!-- end -->--}}
{{--     <div class="col-md-12 ftco-animate">--}}

{{--       <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">--}}

{{--          <div class="mb-4 mb-md-0 mr-5">--}}
{{--           <div class="job-post-item-header d-flex align-items-center">--}}
{{--             <h2 class="mr-3 text-black h4">Frontend Development</h2>--}}
{{--             <div class="badge-wrap">--}}
{{--              <span class="bg-secondary text-white badge py-2 px-3">Internship</span>--}}
{{--             </div>--}}
{{--           </div>--}}
{{--           <div class="job-post-item-body d-block d-md-flex">--}}
{{--             <div class="mr-3"><span class="icon-layers"></span> <a href="#">Facebook, Inc.</a></div>--}}
{{--             <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>--}}
{{--           </div>--}}
{{--          </div>--}}

{{--          <div class="ml-auto d-flex">--}}
{{--            <a href="job-single.html" class="btn btn-primary py-2 mr-1">Apply Job</a>--}}
{{--            <a href="#" class="btn btn-secondary rounded-circle btn-favorite d-flex align-items-center icon">--}}
{{--              <span class="icon-heart"></span>--}}
{{--            </a>--}}
{{--          </div>--}}
{{--       </div>--}}
{{--     </div> <!-- end -->--}}
{{--     <div class="col-md-12 ftco-animate">--}}
{{--       <div class="job-post-item bg-white p-4 d-block d-md-flex align-items-center">--}}

{{--          <div class="mb-4 mb-md-0 mr-5">--}}
{{--           <div class="job-post-item-header d-flex align-items-center">--}}
{{--             <h2 class="mr-3 text-black h4">Open Source Interactive Developer</h2>--}}
{{--             <div class="badge-wrap">--}}
{{--              <span class="bg-danger text-white badge py-2 px-3">Temporary</span>--}}
{{--             </div>--}}
{{--           </div>--}}
{{--           <div class="job-post-item-body d-block d-md-flex">--}}
{{--             <div class="mr-3"><span class="icon-layers"></span> <a href="#">New York Times</a></div>--}}
{{--             <div><span class="icon-my_location"></span> <span>Western City, UK</span></div>--}}
{{--           </div>--}}
{{--          </div>--}}
{{--          --}}
{{--          <div class="ml-auto d-flex">--}}
{{--            <a href="job-single.html" class="btn btn-primary py-2 mr-1">Apply Job</a>--}}
{{--            <a href="#" class="btn btn-secondary rounded-circle btn-favorite d-flex align-items-center icon">--}}
{{--              <span class="icon-heart"></span>--}}
{{--            </a>--}}
{{--          </div>--}}
{{--       </div>--}}
{{--     </div> <!-- end -->--}}
{{--    </div>--}}
{{--    <div class="row mt-5">--}}
{{--      <div class="col text-center">--}}
{{--        <div class="block-27">--}}
{{--          <ul>--}}
{{--            <li><a href="#">&lt;</a></li>--}}
{{--            <li class="active"><span>1</span></li>--}}
{{--            <li><a href="#">2</a></li>--}}
{{--            <li><a href="#">3</a></li>--}}
{{--            <li><a href="#">4</a></li>--}}
{{--            <li><a href="#">5</a></li>--}}
{{--            <li><a href="#">&gt;</a></li>--}}
{{--          </ul>--}}
{{--        </div>--}}
{{--      </div>--}}
{{--    </div>--}}
{{--  </div>--}}
{{--</section>--}}










<section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_1.jpg);" data-stellar-background-ratio="0.5">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-10">

@php
  $Block_Counter=\App\Model\Counter::whereid('1')->get();

@endphp
@foreach($Block_Counter as $Counter)

        <div class="row">
          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 text-center">
              <div class="text">
                <strong class="number" data-number="{{ $Counter->cout_Jobs }}">0</strong>
                <span>Jobs</span>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 text-center">
              <div class="text">
                <strong class="number" data-number="{{ $Counter->cout_Members }}">0</strong>
                <span>Members</span>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 text-center">
              <div class="text">
                <strong class="number" data-number="{{ $Counter->cout_Resume }}">0</strong>
                <span>Resume</span>
              </div>
            </div>
          </div>
          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 text-center">
              <div class="text">
                <strong class="number" data-number="{{ $Counter->cout_Company }}">0</strong>
                <span>Company</span>
              </div>
            </div>
          </div>
        </div>

@endforeach

      </div>
    </div>
  </div>
</section>


<section class="ftco-section testimony-section">
  <div class="container">
    <div class="row justify-content-center mb-5 pb-3">
      <div class="col-md-7 text-center heading-section ftco-animate">
        <span class="subheading">Testimonial</span>
        <h2 class="mb-4"><span>Happy</span> Clients</h2>
      </div>
    </div>
    <div class="row ftco-animate">
      <div class="col-md-12">
        <div class="carousel-testimony owl-carousel ftco-owl">
			@php
				$Block_Client=\App\Model\HappyClients::orderBy('ID','DESC')->get();

			@endphp
			<?php
			$count = 1;
			foreach($Block_Client as $Client):
			?>
			<div class="item">
				<div class="testimony-wrap py-4 pb-5">
					<div class="user-img mb-4" style="background-image: url('{{ asset('/clientImages/'.$Client->image) }}')">
                    <span class="quote d-flex align-items-center justify-content-center">
                      <i class="icon-quote-left"></i>
                    </span>
					</div>
					<div class="text">
						<p class="mb-4">@php echo $Client->description @endphp</p>
						<p class="name">{{$Client->name}}</p>
						<span class="position">{{$Client->type}}</span>
					</div>
				</div>
			</div>

			<?php
			$count++;
			endforeach;
			?>
        </div>
      </div>
    </div>
  </div>
</section>





<style>
	.blog-overlay .blog-icon {
		position: absolute;
		top: 0px;
		width: 100%;
		z-index: 2;
	}
	.blog-overlay .blog-icon .date {
		background: #050801;
		padding: 10px 15px;
		text-align: center;
		color: #ffffff;
	}

	.float-left {
		float: left!important;
	}
	.bg-warning {
		background-color: #ffc107!important;
	}
	.blog-overlay .blog-name {
		padding-left: 30px;
		position: absolute;
		bottom: 0px;
		left: 0;
		right: 0;
		width: 100%;
		z-index: 2;
	}
	.pl-20 {
		padding-left: 20px !important;
	}
	.listing-post .blog-name .blog-name-left {
		width: 50px;
		height: 50px;
		border-radius: 50%;
		color: #ffffff;
		text-align: center;
		line-height: 50px;
		float: left;
		margin-right: 20px;
	}

	.bg-info {
		background-color: #17a2b8!important;
	}
	.listing-post .blog-name .blog-name-right {
		display: table-cell;
	}
	.text-white {
		color: #fff!important;
	}
	.listing-post .listing-post-info {
		background: #ffffff;
		padding: 20px;
	}
	.d-inline-block {
		display: inline-block!important;
	}
	.list-unstyled {
		padding-left: 0;
		list-style: none;
	}
	ul {
		margin: 0px;
		padding: 0px;
	}
	.listing-post .listing-post-info .listing-post-meta ul li a {
		font-weight: 800;
		color: #323232;
	}
	.divider {
		border-bottom: 1px solid rgba(0, 0, 0, 0.1);
	}

	.mb-15 {
		margin-bottom: 15px !important;
	}
	.mt-15 {
		margin-top: 15px !important;
	}
</style>


<section class="ftco-section bg-light">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8">
				<div class="section-title text-center">
					<h2>Recent  <span class="theme-color"> Blog </span>  </h2>
					<p>You will sail along until you collide with an immovable object, after which you will sink to the bottom</p>
				</div>
			</div>
		</div>
		<div class="row">

		@forelse($Block_Blog as $post)
            <div class='col-md-4'> 

				<!-- <a href="{{$post->url()}}"> -->
				<a href="{{$post->path()}}"><img src="{{ asset('blog_images/'.$post->image_thumbnail) }}" 
        style="height: 220px;width: 100%;border-radius: 10px;padding-bottom:20px"></a>
				<!-- </a> -->
        <span class=''>{{date('d-M-Y', strtotime($post->posted_at))}} </span>
        <span style="padding-right:10px;float:right">{{ $post->author->name}}</span><hr>
                <h3 class=''><a href='{{$post->path()}}'>{{$post->title}}</a></h3>
                
				
                <p>{!! $post->generate_introduction(140) !!}</p>
                <!-- <a href="{{$post->url()}}" class="btn btn-info">View Post</a> -->
            </div>
            @empty
            no post
        @endforelse

		</div>
	</div>
</section>

@endsection



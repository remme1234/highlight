<%@ page language="java" contentType="text/html; charset=UTF-8" %>



			<div class="mainbar">
      
				<!-- Page heading -->
				<div class="page-head">
					<!-- Page heading -->
					<h2 class="pull-left">Tables 
					<!-- page meta -->
					<span class="page-meta">Something Goes Here</span>
					</h2>
					<!-- Breadcrumb -->
					<div class="bread-crumb pull-right">
						 <a href="#" onclick="pageSubmitFn('main','main')"><i class="fa fa-home"></i> Home</a> 
						<!-- Divider -->
						<span class="divider">/</span> 
						<a href="#" onclick="pageSubmitFn('main','tables')" class="bread-current">Tables</a>
					</div>
					<div class="clearfix"></div>
				</div> <!--/ Page heading ends -->



				<!-- Matter -->

				<div class="matter">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="widget wred">
									<div class="widget-head">
									  <div class="pull-left">Tables</div>
									  <div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
										<a href="#" class="wclose"><i class="fa fa-times"></i></a>
									  </div>
									  <div class="clearfix"></div>
									</div>
									<div class="widget-content">
										<div class="table-responsive">
											<table class="table table-bordered ">
												<thead>
													<tr>
													  <th>#</th>
													  <th>Name</th>
													  <th>Location</th>
													  <th>Age</th>
													  <th>Education</th>
													</tr>
												</thead>
												<tbody>
													<tr>
													  <td>1</td>
													  <td>Ashok</td>
													  <td>India</td>
													  <td>23</td>
													  <td>B.Tech</td>
													</tr>
													<tr>
													  <td>2</td>
													  <td>Kumarasamy</td>
													  <td>USA</td>
													  <td>22</td>
													  <td>BE</td>
													</tr>
													<tr>
													  <td>3</td>
													  <td>Babura</td>
													  <td>UK</td>
													  <td>43</td>
													  <td>PhD</td>
													</tr>
													<tr>
													  <td>4</td>
													  <td>Ravi Kumar</td>
													  <td>China</td>
													  <td>73</td>
													  <td>PUC</td>
													</tr>
													<tr>
													  <td>5</td>
													  <td>Santhosh</td>
													  <td>Japan</td>
													  <td>43</td>
													  <td>M.Tech</td>
													</tr>                                                                        
												</tbody>
											</table>
										</div>
									</div>
									<div class="widget-foot">
										<ul class="pagination pull-right">
										  <li><a href="#">Prev</a></li>
										  <li><a href="#">1</a></li>
										  <li><a href="#">2</a></li>
										  <li><a href="#">3</a></li>
										  <li><a href="#">4</a></li>
										  <li><a href="#">Next</a></li>
										</ul>
										<div class="clearfix"></div> 
									</div>
								</div>

								<div class="widget wviolet">
									<div class="widget-head">
										<div class="pull-left">Tables</div>
										<div class="widget-icons pull-right">
											<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
											<a href="#" class="wclose"><i class="fa fa-times"></i></a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="widget-content">
										<div class="table-responsive">
											<table class="table table-bordered ">
												<thead>
													<tr>
													  <th>#</th>
													  <th>Name</th>
													  <th>Location</th>
													  <th>Date</th>
													  <th>Type</th>
													  <th>Status</th>
													  <th>Control</th>
													</tr>
												</thead>
												<tbody>
													<tr>
													  <td>1</td>
													  <td>Ravi Kumar</td>
													  <td>India</td>
													  <td>23/12/2012</td>
													  <td>Paid</td>
													  <td><span class="label label-success">Active</span></td>
													  <td>
														  <button class="btn btn-sm btn-success"><i class="fa fa-check"></i> </button>
														  <button class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i> </button>
														  <button class="btn btn-sm btn-danger"><i class="fa fa-times"></i> </button>
													  </td>
													</tr>
													<tr>
													  <td>2</td>
													  <td>Parneethi Chopra</td>
													  <td>USA</td>
													  <td>13/02/2012</td>
													  <td>Free</td>
													  <td><span class="label label-important">Banned</span></td>
													  <td>
														  <button class="btn btn-sm btn-default"><i class="fa fa-check"></i> </button>
														  <button class="btn btn-sm btn-default"><i class="fa fa-pencil"></i> </button>
														  <button class="btn btn-sm btn-default"><i class="fa fa-times"></i> </button>
													  </td>
													</tr>
													<tr>
													  <td>3</td>
													  <td>Kumar Ragu</td>
													  <td>Japan</td>
													  <td>12/03/2012</td>
													  <td>Paid</td>
													  <td><span class="label label-success">Active</span></td>
													  <td>
														<div class="btn-group">
														  <button class="btn btn-sm btn-default"><i class="fa fa-check"></i> </button>
														  <button class="btn btn-sm btn-default"><i class="fa fa-pencil"></i> </button>
														  <button class="btn btn-sm btn-default"><i class="fa fa-times"></i> </button>
														</div>
													  </td>
													</tr>
													<tr>
													  <td>4</td>
													  <td>Vishnu Vardan</td>
													  <td>Bangkok</td>
													  <td>03/11/2012</td>
													  <td>Paid</td>
													  <td><span class="label label-success">Active</span></td>
													  <td>
														<div class="btn-group">
														  <button class="btn btn-sm btn-success"><i class="fa fa-check"></i> </button>
														  <button class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i> </button>
														  <button class="btn btn-sm btn-danger"><i class="fa fa-times"></i> </button>
														</div>
													  </td>
													</tr>
													<tr>
													  <td>5</td>
													  <td>Anuksha Sharma</td>
													  <td>Singapore</td>
													  <td>13/32/2012</td>
													  <td>Free</td>
													  <td><span class="label label-important">Banned</span></td>
													  <td>
														<div class="btn-group1">
														  <button class="btn btn-sm btn-success"><i class="fa fa-check"></i> </button>
														  <button class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i> </button>
														  <button class="btn btn-sm btn-danger"><i class="fa fa-times"></i> </button>
														</div>
													  </td>
													</tr>      
												</tbody>
											</table>
										</div>
									</div>
									<div class="widget-foot">
										<ul class="pagination pull-right">
										  <li><a href="#">Prev</a></li>
										  <li><a href="#">1</a></li>
										  <li><a href="#">2</a></li>
										  <li><a href="#">3</a></li>
										  <li><a href="#">4</a></li>
										  <li><a href="#">Next</a></li>
										</ul>
										<div class="clearfix"></div> 
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="widget worange">
									<div class="widget-head">
									  <div class="pull-left">Tables</div>
									  <div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
										<a href="#" class="wclose"><i class="fa fa-times"></i></a>
									  </div>
									  <div class="clearfix"></div>
									</div>

									<div class="widget-content">
										<div class="table-responsive">
											<table class="table table-bordered ">
											  <thead>
												<tr>
												  <th>#</th>
												  <th>Name</th>
												  <th>Location</th>
												  <th>Type</th>
												  <th>Status</th>
												</tr>
											  </thead>
											  <tbody>

												<tr>
												  <td>1</td>
												  <td>Ravi Kumar</td>
												  <td>India</td>
												  <td>Paid</td>
												  <td><span class="label label-success">Active</span></td>

												</tr>


												<tr>
												  <td>2</td>
												  <td>Parneethi Chopra</td>
												  <td>USA</td>
												  <td>Free</td>
												  <td><span class="label label-important">Banned</span></td>

												</tr>

												<tr>
												  <td>3</td>
												  <td>Kumar Ragu</td>
												  <td>Japan</td>
												  <td>Paid</td>
												  <td><span class="label label-success">Active</span></td>

												</tr>

												<tr>
												  <td>4</td>
												  <td>Vishnu Vardan</td>
												  <td>Bangkok</td>
												  <td>Paid</td>
												  <td><span class="label label-success">Active</span></td>

												</tr>

												<tr>
												  <td>5</td>
												  <td>Anuksha Sharma</td>
												  <td>Singapore</td>
												  <td>Free</td>
												  <td><span class="label label-important">Banned</span></td>
							  
												</tr>                                                            

											  </tbody>
											</table>
										</div>
									</div>
									<div class="widget-foot">
										<ul class="pagination pull-right">
										  <li><a href="#">Prev</a></li>
										  <li><a href="#">1</a></li>
										  <li><a href="#">2</a></li>
										  <li><a href="#">3</a></li>
										  <li><a href="#">4</a></li>
										  <li><a href="#">Next</a></li>
										</ul>
										<div class="clearfix"></div> 
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="widget wlightblue">
									<div class="widget-head">
									  <div class="pull-left">Tables</div>
									  <div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
										<a href="#" class="wclose"><i class="fa fa-times"></i></a>
									  </div>
									  <div class="clearfix"></div>
									</div>
									<div class="widget-content">
										<div class="table-responsive">
											<table class="table  table-bordered ">
											  <thead>
												<tr>
												  <th>#</th>
												  <th>Name</th>
												  <th>Location</th>
												  <th>Date</th>
												  <th>Type</th>
												</tr>
											  </thead>
											  <tbody>

												<tr>
												  <td>1</td>
												  <td>Ravi Kumar</td>
												  <td>India</td>
												  <td>23/12/2012</td>
												  <td>Paid</td>
												</tr>


												<tr>
												  <td>2</td>
												  <td>Parneethi Chopra</td>
												  <td>USA</td>
												  <td>13/02/2012</td>
												  <td>Free</td>
												</tr>

												<tr>
												  <td>3</td>
												  <td>Kumar Ragu</td>
												  <td>Japan</td>
												  <td>12/03/2012</td>
												  <td>Paid</td>
												</tr>

												<tr>
												  <td>4</td>
												  <td>Vishnu Vardan</td>
												  <td>Bangkok</td>
												  <td>03/11/2012</td>
												  <td>Paid</td>
												</tr>

												<tr>
												  <td>5</td>
												  <td>Anuksha Sharma</td>
												  <td>Singapore</td>
												  <td>13/32/2012</td>
												  <td>Free</td>
												</tr>                                                            

											  </tbody>
											</table>
										</div>

									</div>
									<div class="widget-foot">
										<ul class="pagination pull-right">
										  <li><a href="#">Prev</a></li>
										  <li><a href="#">1</a></li>
										  <li><a href="#">2</a></li>
										  <li><a href="#">3</a></li>
										  <li><a href="#">4</a></li>
										  <li><a href="#">Next</a></li>
										</ul>
										<div class="clearfix"></div> 
									</div>                 
								</div>
							</div>
						</div>
					</div>
				</div><!--/ Matter ends -->
			</div><!--/ Mainbar ends -->	    	
			

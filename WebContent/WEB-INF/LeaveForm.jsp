<jsp:include page="/WEB-INF/layout.jsp"></jsp:include>
		
		<form class="form leave-form" method="post" action="leave">
				<h3>Leave Request</h3><br>
				<div class="form-group">
					<label for="name">Name of the Employee</label>
					<input class="form-control" id="name" required type="text" readonly value="${name}" name="name" placeholder="Name" />
				</div>
				<div class="form-row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="ecode">Ecode</label>
							<input class="form-control" id="ecode" required type="text" readonly name="ecode" value="${ecode}" placeholder="Ecode"/>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="project">Project</label>
							<input class="form-control" id="project" value="${project}"  readonly required type="text" name="project" placeholder="Project"  data-validation="required" data-validation-error-msg="Enter your project name"/>
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="tLead">Team Lead</label>
							<input class="form-control" id="tLead" required value="${lead}"  readonly type="text" name="tLead" placeholder="Team Lead" data-validation="length"  data-validation-length="min3" data-validation-error-msg="Name is is shorter than 3 characters"/>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="manager">Project Manager</label>
							<input class="form-control" id="manager" value="${manager}"  readonly required type="text" name="manager" placeholder="Project Manager" data-validation="length"  data-validation-length="min3" data-validation-error-msg="Name is is shorter than 3 characters"/>
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="leave-start">Leave Start Date</label>
							<input class="form-control"  class="date-format"  id="leave-start"   required type="text"  name="leave-start"  onclick="cal()"  value="yy-mm-dd" autocomplete="off"  data-validation="date" data-validation-error-msg="Please select a start date"/>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="leave-end">Leave End Date</label>
							<input class="form-control "  class="date-format"  id="leave-end"    required type="text"  name="leave-end" onchange="cal()"  value="yy-mm-dd" autocomplete="off"  data-validation="date" data-validation-error-msg="Please select an end date"/>
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-sm-6">
						<div class="form-group">
							<label for="number-days">No. of working days</label>
							<input class="form-control" required id="number-days" type="number" name="number-days"/>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="leave-type">Leave Type</label>
							<select class="form-control" id="leave-type" name="leave-type" data-validation="required" data-validation-error-msg="Please select leave type">
								<option selected value="null" disabled>-Select an option-</option>
								<option value="Sick Leave">Sick Leave</option>
								<option value="Casual Leave">Casual Leave</option>
								<option value="Earned Leave">Earned Leave</option>
								<option value="Maternity Leave">Maternity Leave</option>
								<option value="On Office Duty">On Office Duty</option>
								<option value="Biometric Miss Out">Biometric Miss Out</option>
							</select>
						</div>
					</div>
				</div>
				<div class="form-radio" style="display: inherit;">
					<input type="radio" name="day-leave" value="full-day" checked> Full Day Leave
					<input type="radio" style="margin-left:10%;" name="day-leave" value="half-day"> Half Day Leave
				</div>
				<br>
				<div class="form-group">
					<label for="leave-desc">Leave Description/Reason</label>
					<textarea class="form-control" required id="leave-desc"  autocomplete="off"  type="text" placeholder="Brief Description" name="leave-desc"  data-validation="length"  data-validation-length="5-140" data-validation-error-msg="Leave description must be between 5-140 characters" rows="3"></textarea>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			<div class="modal fade" id="submitFormModal" tabindex="-1" role="dialog" aria-labelledby="submitFormModalTitle" aria-hidden="true">
			    <div class="modal-dialog modal-dialog-centered" role="document">
			        <div class="modal-content">
			            <div class="modal-header">
			                <h4 class="modal-title" id="ModalTitle">Request Leave?</h4>
			                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			                    <span aria-hidden="true">&times;</span>
		                    </button>
			            </div>
			            <div class="modal-body">
			                <p>Are you sure you want to request for leave?</p><br>
			                <div style="text-align: center; display: none;" id="progress">
			                    <img src="static/loading.gif" alt="loading..">
			                </div>
			            </div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
			                <button id="submitFormBtn" value="Add" class="btn btn-primary">Yes</button>
			            </div>
			        </div>
			    </div>
			</div>
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
	<script src="/LeaveRequest/static/formJs.js"></script>

	</body>
</html>
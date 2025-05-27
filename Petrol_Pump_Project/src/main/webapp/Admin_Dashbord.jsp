<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="Admin_Header.jsp" />



        <!-- First Row of Cards -->
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card text-white bg-primary mb-3">
                    <div class="card-header"><a href="view_employee" style="color: white">Total Employees</a></div>
                    <div class="card-body">
                        <h3 class="card-title"></h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-white bg-success mb-3">
                    <div class="card-header"><a href="view_machine" style="color: white">Total Machines</a></div>
                    <div class="card-body">
                        <h3 class="card-title"></h3>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card text-white bg-info mb-3">
                    <div class="card-header"><a href="active_employee" style="color: white">Active Employees</a></div>
                    <div class="card-body">
                        <h3 class="card-title"></h3>
                    </div>
                </div>
            </div>
        </div>

        <!-- Second Row of Cards -->
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card text-white bg-danger mb-3">
                    <div class="card-header"><a href="inactive_employee" style="color: white">Inactive Employees</a></div>
                    <div class="card-body">
                        <h3 class="card-title"></h3>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<jsp:include page="Admin_Footer.jsp" />

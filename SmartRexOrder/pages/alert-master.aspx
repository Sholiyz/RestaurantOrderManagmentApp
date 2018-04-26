<%@ Page Title="" Language="C#" MasterPageFile="~/pages/pasturemastertemplate.master" AutoEventWireup="true" CodeFile="alert-master.aspx.cs" Inherits="pages_alert_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpagecontent" Runat="Server">
     <!-- Page wrapper  <div class="page-wrapper"> </div>-->
       
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Dashboard</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet Wrong</h4>
                                <div class="card-content">
                                    <div class="sweetalert m-t-15">
                                        <button type="button" class="btn btn-danger btn sweet-wrong" >Sweet Wrong</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->


                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet Message</h4>
                                <div class="card-content">
                                    <div class="sweetalert m-t-15">
                                        <button type="button" class="btn btn-info btn sweet-message" >Sweet Message</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->


                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet Text</h4>
                                <div class="card-content">
                                    <div class="sweetalert m-t-15">
                                        <button type="button" class="btn btn-primary btn sweet-text" >Sweet Text</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->


                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet Success</h4>
                                <div class="card-content">
                                    <div class="sweetalert m-t-15">
                                        <button type="button" class="btn btn-success btn sweet-success" >Sweet Success</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->

                </div>
                <!-- /# row -->
                <div class="row">
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet Confirm</h4>
                                <div class="card-content">
                                    <div class="sweetalert m-t-15">
                                        <button type="button" class="btn btn-warning btn sweet-confirm">Sweet Confirm</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->


                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet Confirm Or Cancel</h4>
                                <div class="card-content">
                                    <div class="sweetalert m-t-15">
                                        <a class="btn btn-warning btn sweet-success-cancel" style="color:white;" >Sweet Confirm Or Cancel</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->


                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet Image Message</h4>
                                <div class="card-content">
                                    <div class="sweetalert m-t-15">
                                        <a class="btn btn-info btn sweet-image-message" style="color:white;" >Sweet Image Message</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->


                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet HTML</h4>
                                <div class="card-content">
                                    <div class="sweetalert m-t-15">
                                        <a class="btn btn-primary btn sweet-html" style="color:white;" >Sweet HTML</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet Auto Close</h4>
                                <div class="card-content">
                                    <div class="sweetalert m-t-15">
                                        <a class="btn btn-danger btn sweet-auto" style="color:white;" >Sweet Auto Close</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->


                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet Prompt</h4>
                                <div class="card-content">
                                    <div class="sweetalert m-t-15">
                                        <a class="btn btn-success btn sweet-prompt" style="color:white;" >Sweet Prompt</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->


                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Sweet Ajax</h4>
                                <div class="card-content">
                                </div>
                                <div class="sweetalert m-t-15">
                                    <a class="btn btn-info btn sweet-ajax btn-xs" style="color:white;" >Sweet Ajax</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# card -->
                </div>
                <!-- /# column -->

            </div>
            <!-- End PAge Content -->
        
        <!-- End Container fluid  -->
</asp:Content>


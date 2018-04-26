<%@ Page Title="" Language="C#" MasterPageFile="~/pages/pastureforiframe.master" AutoEventWireup="true" CodeFile="form-frame.aspx.cs" Inherits="pages_form_frame" %>
<%@ Register Src="~/utility/NotificationControl.ascx" TagPrefix="uc1" TagName="NotificationControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpagecontent" Runat="Server">
     <div class="row" runat="server" id="notificationdiv" visible="false">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Dismissing</h4>
                    <div class="card-content">
                        <div class="alert alert-primary alert-dismissible fade show">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <strong>Holy guacamole!</strong> You should check in on some of those fields below.
                        </div>
                        <div class="alert alert-danger alert-dismissible fade show">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <strong>Holy guacamole!</strong> You should check in on some of those fields below.
                        </div>
                        <div class="alert alert-warning alert-dismissible fade show">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <strong>Holy guacamole!</strong> You should check in on some of those fields below.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-1">
        </div>
        <div class="col-lg-9">

            <div class="card card-outline-primary">
                <%-- <div class="card-header">
                                <h4 class="m-b-0 text-white">Sample form</h4>
                            </div>--%>
                  <uc1:NotificationControl runat="server" ID="NotificationControl" />
                    <%--<div class="alert alert-primary alert-dismissible fade show" id="notediv"  runat="server" visible="false">
                        <asp:Literal ID="notehtml" runat="server"></asp:Literal>    
                        </div>--%>
              
                <div class="card-body">
                    <div>
                        <div class="form-body">
                            <h3 class="card-title m-t-15">Person Info</h3>
                            <hr />
                            <div class="row p-t-20">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">First Name</label>
                                        <input type="text" id="firstName" class="form-control" placeholder="First Name" />
                                        <small class="form-control-feedback">This is inline help </small>
                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-6">
                                    <div class="form-group has-error">
                                        <%--has-danger--%>
                                        <label class="control-label">Last Name</label>
                                        <input type="text" id="lastName" class="form-control form-control-danger" placeholder="Last Name" />
                                        <small class="form-control-feedback">This field has error. </small>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group has-success">
                                        <label class="control-label">Gender</label>
                                        <select class="form-control custom-select">
                                            <option value="">Male</option>
                                            <option value="">Female</option>
                                        </select>
                                        <small class="form-control-feedback">Select your gender </small>
                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Date of Birth</label>
                                        <input type="date" class="form-control" placeholder="dd/mm/yyyy" />
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Category</label>
                                        <select class="form-control custom-select" data-placeholder="Choose a Category" tabindex="1">
                                            <option value="Category 1">Category 1</option>
                                            <option value="Category 2">Category 2</option>
                                            <option value="Category 3">Category 5</option>
                                            <option value="Category 4">Category 4</option>
                                        </select>
                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label">Membership</label>
                                        <div class="form-check horizontal">
                                            <label class="custom-control custom-radio">
                                                <input type="radio" checked="checked" />
                                                <%--<input id="radio1" name="radio" type="radio" checked class="custom-control-input"/>--%>
                                                <span class="custom-control-indicator"></span>
                                                <span class="custom-control-description">Free</span>
                                            </label>
                                            <label class="custom-control custom-radio">
                                                <input id="radio2" type="radio" name="radio" /><%--class="custom-control-input" --%>
                                                <span class="custom-control-indicator"></span>
                                                <span class="custom-control-description">Paid</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->
                            <h3 class="box-title m-t-40">Address</h3>
                            <hr>
                            <div class="row">
                                <div class="col-md-12 ">
                                    <div class="form-group">
                                        <label>Street</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>City</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>State</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                            <!--/row-->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Post Code</label>
                                        <input type="text" class="form-control" />
                                    </div>
                                </div>
                                <!--/span-->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Country</label>
                                        <select class="form-control custom-select">
                                            <option>--Select your Country--</option>
                                            <option>India</option>
                                            <option>Sri Lanka</option>
                                            <option>USA</option>
                                        </select>
                                    </div>
                                </div>
                                <!--/span-->
                            </div>
                        </div>
                        <div class="form-actions text-center">
                            <button type="button" class="btn btn-success"><i class="fa fa-check"></i>Save</button>
                            <button type="button" class="btn btn-inverse">Cancel</button>                            
                            <asp:Button runat="server" ID="Submitbtn" OnClick="Submitbtn_Click" CssClass="btn btn-success"  Text="ViewAlert"/>
                            <asp:Button runat="server" ID="Checkbtn" OnClick="Checkbtn_Click" CssClass="btn btn-danger"  Text="Check Notification"/>
                            <asp:Button runat="server" ID="Confirmbtn" OnClick="Confirmbtn_Click" CssClass="btn btn-warning" Text="Confirm Notification"/>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <div class="col-lg-2">
        </div>
    </div>
</asp:Content>


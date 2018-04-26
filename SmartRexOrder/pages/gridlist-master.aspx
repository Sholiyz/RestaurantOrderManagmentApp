<%@ Page Title="" Language="C#" MasterPageFile="~/pages/pastureforiframe.master" AutoEventWireup="true" CodeFile="gridlist-master.aspx.cs" Inherits="pages_gridlist_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainpagecontent" runat="Server">

    <!-- /# column -->
    <div class="col-lg-12">
        <div class="card">
            <div class="card-title">
                <h4> Order Table </h4>

            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:GridView ID="OrderListGrid" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered" DataKeyNames="ID" EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="Order ID" SortExpression="ID">
                                <HeaderStyle CssClass="hide" HorizontalAlign="Left" />
                                <ItemStyle CssClass="hide" HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Name" HeaderText="Order Name" SortExpression="Name">
                                <HeaderStyle  HorizontalAlign="Left" />
                                <ItemStyle  HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                <HeaderStyle CssClass="show" HorizontalAlign="Left" />
                                <ItemStyle CssClass="show" HorizontalAlign="Left" />
                            </asp:BoundField>
                           <%-- <asp:BoundField DataField="ISProcessStatus" HeaderText="ProcessStatus" SortExpression="ISProcessStatus">
                                <HeaderStyle CssClass="show" HorizontalAlign="Left" />
                                <ItemStyle CssClass="show" HorizontalAlign="Left" />
                            </asp:BoundField>--%>
                            <asp:TemplateField HeaderText="Process Status">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%#GetIsProcessStatus(Convert.ToBoolean(Eval("IsProcessing")))%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delivered Status">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%#GetIsDeliveredStatus(Convert.ToBoolean(Eval("IsDelivered")))%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Canceled Status">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%#GetIsCancelledStatus(Convert.ToBoolean(Eval("IsCancelled")))%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Actions" HeaderStyle-CssClass="center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                                <ItemTemplate>
                                    <div class="form-actions text-center">
                                        <%--<asp:Button runat="server" Text="Processing" ID="lnkView" Enabled='<%#Eval("IsProcessing") %>' CssClass="btn btn-xs btn-success" />--%>
                                        <asp:Button runat="server" Text="Cancel Order" ID="CancelOrderBtn" Enabled='<%# (((Convert.ToBoolean(Eval("IsProcessing")) == true || Convert.ToBoolean(Eval("IsDelivered")) == true)|| Convert.ToBoolean(Eval("IsCancelled")) == true) ? false : true) %>' CssClass="btn btn-xs btn-danger" />
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>


                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>
</asp:Content>


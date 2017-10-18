<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeFile="Bulk.aspx.cs" Inherits="Bulk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NavContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" Runat="Server">
    <h1>
          <asp:Label ID="LblHeader" runat="server" Text="SMS Bulk" />
            
    </h1>
    <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-server"></i>SMS</a></li>
            <li class="active">SMS Bulk</li>
    </ol>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <form id="Form1" runat="server">
    <section class="content  skin-red">

        <div class="col-md-6 center-block">
          <div class="box box-primary skin-red">
               
                <!-- form start -->
                  <div class="box-body">
                    <div class="form-group">
                      <label >Destination (Phone Num) - Separated by comma</label>
                      <asp:HiddenField ID="HiddenId" runat="server" Value="0" />
                      <asp:TextBox ID="TbMobilePhone" TextMode="MultiLine"  Height="100px" Width="100%"   Text=""  runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label >SMS Text</label>
                        <asp:TextBox ID="TbSMSText" Text="" TextMode="MultiLine" Height="200px" Width="100%"  runat="server" CssClass="form-control" />
                    </div>
                    
                    </div><!-- /.box-body -->

                  <div class="box-footer">
                   <asp:Button ID="BtnSubmit" runat="server" CssClass="btn btn-primary" Text="Send"
                           />
                   
                  </div>
              </div><!-- /.box -->
              </div>
   
     </section>
    </form>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="JsContent" Runat="Server">
      <script type="text/javascript">

          // $('ul li').removeClass('active');
          // $('#m_kabag_pengajuan').addClass('active');
          //  $('#m_kabag_pengajuan_form').addClass('active');



    </script>
</asp:Content>

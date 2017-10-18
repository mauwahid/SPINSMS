<%@ Page Title="" Language="C#" MasterPageFile="~/Template.master" AutoEventWireup="true" CodeFile="Inbox.aspx.cs" Inherits="Inbox_Inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NavContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent" Runat="Server">
    <h1>
            Inbox
            
    </h1>
    <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-support"></i>Inbox</a></li>
            <li class="active">Inbox</li>
    </ol>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
      <form id="Form1" runat="server" defaultbutton="btnCari">
    <section class="content">
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title"></h3>
                </div>
                <div class="box-body">
                <div class="row">
                    <div class="col-md-6 col-md-offset-6">
                        <div class="input-group input-group-sm">
                        <asp:TextBox CssClass="form-control" ID="TbCari" runat="server" />
                        <span class="input-group-btn">
                            <asp:Button ID="btnCari" CssClass="btn btn-info btn-flat" runat="server" 
                                Text="Search !" OnClick="btnCari_Click1" />
                        </span>
                        </div>
                    
                    </div>
                </div>
                </div><!-- /.box-body -->
                </div><!-- /.box -->
              <div class="box box-primary">
                <div class="box-header">
                  <h3 class="box-title"></h3>
                </div>
                <div class="box-body">
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                   DataKeyNames="Id"   AllowPaging="true"
                                   ShowHeaderWhenEmpty="true"
                                   CssClass="table table-bordered" 
                                   OnRowCommand="RowCommand_Click"
                                   OnPageIndexChanging="GView_PageIndexChanging">
                                <PagerStyle CssClass="gridview" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id"  />
                                    <asp:BoundField DataField="ReceivingDateTime" HeaderText="Receiving Date" />
                                    <asp:BoundField DataField="SenderNumber" HeaderText="Sender" />
                                    <asp:BoundField DataField="TextDecoded" HeaderText="Text" />
                                    <asp:TemplateField HeaderText="Delete">
                                         <ItemTemplate>
                                           <asp:LinkButton ID="LinkButton1" 
                                             CommandArgument='<%# Eval("Id") %>'
                                             OnClientClick="return confirm('Sure To Delete?')" 
                                             CommandName="Delete" runat="server">
                                             Hapus</asp:LinkButton>
                                         </ItemTemplate>
                                    </asp:TemplateField>
                                 </Columns>
                                </asp:GridView>
							
                 
                </div><!-- /.box-body -->
              
              </div><!-- /.box -->
    </section>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="JsContent" Runat="Server">
      <script type="text/javascript">

       
    </script>
</asp:Content>

<%@ Control Language="vb" AutoEventWireup="false" Explicit="true" Codebehind="MCP_ReportedPost.ascx.vb" Inherits="DotNetNuke.Modules.Forum.MCP.ReportedPost" %>
<%@ Register TagPrefix="dnnforum" Namespace="DotNetNuke.Modules.Forum.WebControls" Assembly="DotNetNuke.Modules.Forum" %>
<div class="dnnForm mcpReportedPost dnnClear">
    <h2 class="dnnFormSectionHead"><asp:Label id="lblTitle" runat="server" resourcekey="ReportedPost.Header" EnableViewState="false" /></h2>
	<asp:Panel ID="pnlReportedPost" runat="server">
	<asp:datagrid ID="dgReportedPost" runat="server" DataKeyField="ForumID" Width="100%" AutoGenerateColumns="false" CssClass="Forum_Grid" GridLines="None" >
        <headerstyle cssclass="dnnGridHeader" verticalalign="Top"/>
	    <itemstyle cssclass="dnnGridItem" horizontalalign="Left" />
	    <alternatingitemstyle cssclass="dnnGridAltItem" />
	    <edititemstyle cssclass="dnnFormInput" />
	    <selecteditemstyle cssclass="dnnFormError" />
	    <footerstyle cssclass="dnnGridFooter" />
	    <pagerstyle cssclass="dnnGridPager" />
		<Columns>
			<asp:TemplateColumn ItemStyle-CssClass="Forum_Grid_Left" HeaderStyle-HorizontalAlign="Left" HeaderText="Post" ItemStyle-Width="55%">
			   <ItemTemplate>
				  <asp:LinkButton ID="cmdSubject" runat="server" CssClass="Forum_NormalBold" CommandName="details" />
				  <br />
				  <asp:Label ID="lblIn" runat="server" CssClass="Forum_Normal" resourcekey="lblIn" EnableViewState="false" />
				  <asp:HyperLink ID="hlForumName" runat="server" CssClass="Forum_Normal" EnableViewState="false" Target="_blank" />
			   </ItemTemplate>
			</asp:TemplateColumn>
			<asp:BoundColumn DataField="PostReported" HeaderText="PostReported" ItemStyle-CssClass="Forum_Grid_Middle" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center" />
		   <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" HeaderText="ReportedDate" ItemStyle-Width="23%" ItemStyle-HorizontalAlign="Right" ItemStyle-CssClass="Forum_Grid_Right" >
			<ItemTemplate>
				<asp:HyperLink ID="lblReportedDate" runat="server" CssClass="Forum_LastPostText" EnableViewState="false" Target="_blank"  />
				<asp:Label ID="lblby" runat="server" CssClass="Forum_Normal" resourcekey="lblby" EnableViewState="false" />
				 <asp:HyperLink ID="hlPostAuthor" runat="server" CssClass="Forum_Normal" EnableViewState="false" Target="_blank" />
			</ItemTemplate>
		   </asp:TemplateColumn>
		</Columns>
	 </asp:datagrid>
	 <dnnforum:AjaxPager ID="BottomPager" runat="server" Width="100%"/>
    </asp:Panel>
	<asp:Panel ID="pnlPostDetails" runat="server">
   <asp:datagrid ID="dgPostReportDetails" runat="server" DataKeyField="PostReportedID" Width="100%" AutoGenerateColumns="false" CssClass="Forum_Grid" GridLines="None" >
        <headerstyle cssclass="dnnGridHeader" verticalalign="Top"/>
	    <itemstyle cssclass="dnnGridItem" horizontalalign="Left" />
	    <alternatingitemstyle cssclass="dnnGridAltItem" />
	    <edititemstyle cssclass="dnnFormInput" />
	    <selecteditemstyle cssclass="dnnFormError" />
	    <footerstyle cssclass="dnnGridFooter" />
	    <pagerstyle cssclass="dnnGridPager" />
		<Columns>
		   <asp:TemplateColumn ItemStyle-Width="10px" >
			   <ItemTemplate>
				  <asp:ImageButton ID="imgAccept" runat="server" CommandName="accept" />
			   </ItemTemplate>
			</asp:TemplateColumn>
			<asp:BoundColumn DataField="Reason" ItemStyle-CssClass="Forum_Grid_Left" HeaderStyle-HorizontalAlign="Left" HeaderText="Reason" ItemStyle-Width="55%" />
			<asp:TemplateColumn ItemStyle-CssClass="Forum_Grid_Middle" HeaderStyle-HorizontalAlign="Center" HeaderText="Alias" ItemStyle-Width="17%">
			<ItemTemplate>
				<asp:HyperLink ID="hlUser" runat="server" CssClass="Forum_Normal" Target="_blank" EnableViewState="false" />
			</ItemTemplate>
		   </asp:TemplateColumn>
		   <asp:TemplateColumn HeaderStyle-HorizontalAlign="Center" HeaderText="Reported" ItemStyle-Width="23%" ItemStyle-HorizontalAlign="Right" ItemStyle-CssClass="Forum_Grid_Right" >
			<ItemTemplate>
				<asp:HyperLink ID="lblReportedDate" runat="server" Target="_blank" EnableViewState="false" CssClass="Forum_LastPostText" />
			</ItemTemplate>
		   </asp:TemplateColumn>
		</Columns>
	 </asp:datagrid>
	 <dnnforum:AjaxPager ID="DetailPager" runat="server" Width="100%"/>
    </asp:Panel>
	<asp:Panel ID="pnlNoItems" runat="server" CssClass="dnnFormMessage dnnFormWarning">
			<asp:Label id="lblNoResults" runat="server" resourcekey="lblNoResults" EnableViewState="false" />
    </asp:Panel>   
</div>
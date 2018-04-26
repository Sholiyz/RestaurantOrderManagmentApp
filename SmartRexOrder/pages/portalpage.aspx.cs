using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_portalpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void GetNavUrl()
    {
        maincontentframe.Src = "form-frame.aspx";
       
    }

    protected void Navtest_ServerClick(object sender, EventArgs e)
    {
        WebControl navelement=sender as WebControl;

        System.Web.UI.HtmlControls.HtmlAnchor navanchor = sender as System.Web.UI.HtmlControls.HtmlAnchor;
        string t = sender.GetType().ToString();
        string id=navanchor.ID.ToString();
        //t control = sender as t;
        ////t control = sender as t;
        //control.id;
        //string id = navelement.Attributes["id"];
        //string id1 = navelement.ID.ToString();
        if (id.ToLower() == "index-iframe")
        {
            maincontentframe.Src = "index-iframe.aspx";
        }
        else
        {
            maincontentframe.Src = "form-frame.aspx";
        }

    }
}
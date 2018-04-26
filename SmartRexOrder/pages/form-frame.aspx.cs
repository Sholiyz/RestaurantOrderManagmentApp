using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_form_frame : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submitbtn_Click(object sender, EventArgs e)
    {
        Alert.CallAlert(Alert.Alerttype.warming.ToString(), "Check and try again.");
        return;
    }

    protected void Checkbtn_Click(object sender, EventArgs e)
    {


        NotificationControl.NoteType = "error";
        NotificationControl.NewNoteHeader = "Oopss.....";
        NotificationControl.NewMessage = "it works";
        NotificationControl.NoteVisible = true;

        NotificationControl.ShowNotification();
        //NotificationControl
        //notificationdiv.Visible = true;
        // notediv.Visible = true;
        //notediv.Attributes["class"]= "alert alert-danger alert-dismissible fade show";
        //notediv.InnerHtml = "<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button> <strong> Holy guacamole!</strong> You should check in on some of those fields below.";
    }

    protected void Confirmbtn_Click(object sender, EventArgs e)
    {
        NotificationControl.NewNoteHeader = "Ooppsss.....";
        NotificationControl.NewMessage = "Are you sure you want to do this?";
        NotificationControl.NoteVisible = true;
        NotificationControl.ConfirmNotification();

        // Confirmbtn.Text =(NotificationControl.IsConfirmStatus == true) ? "True" : "False";
    }
}
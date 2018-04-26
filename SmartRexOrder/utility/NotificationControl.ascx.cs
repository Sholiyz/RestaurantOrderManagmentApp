using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class utility_NotificationControl : System.Web.UI.UserControl
{

    private string NMessage;
    public string NewMessage
    {
        get { return NMessage; }
        set { NMessage = value; }
    }

    private string NNoteHeader;
    public string NewNoteHeader
    {
        get { return NNoteHeader; }
        set { NNoteHeader = value; }
    }

    private bool NVisible;
    public bool NoteVisible
    {
        get { return NVisible; }
        set { NVisible = value; }
    }
    private string Ntype;
    public string NoteType
    {
        get { return Ntype; }
        set { Ntype = value; }
    }

    private bool ConfirmStatus;

    public bool IsConfirmStatus
    {
        get { return ConfirmStatus; }
        set { ConfirmStatus = value; }
    }


    public static string noteheader = string.Empty;// "Oppss...!";
    public static string notemessage = string.Empty;// "You should check in on some of those fields below.";
    protected void Page_Load(object sender, EventArgs e)
    {
        //notediv.Visible = true;
        //string divprimarycss="alert alert-primary alert-dismissible fade show";
        //string divdangercss ="alert alert-danger alert-dismissible fade show";
        //string divsuccesscss ="alert alert-warning alert-dismissible fade show";
        //notediv.Attributes["class"] = divsuccesscss;
        //notediv.Visible = NoteVisible;
        //noteheader = NewNoteHeader;
        //notemessage = NewMessage;    
    }

    public void ShowNotification()
    {
        //notediv.Visible = true;
        string divprimarycss = "alert alert-primary alert-dismissible fade show";
        string divdangercss = "alert alert-danger alert-dismissible fade show";
        string divwarningcss = "alert alert-warning alert-dismissible fade show";
        //notediv.Attributes["class"] = divsuccesscss;
        //notediv.Visible = NoteVisible;
        //noteheader = NewNoteHeader;
        //notemessage = NewMessage;
        if (NoteType.ToLower() == "success")
        {
            notediv.Attributes["class"] = divprimarycss;
            notediv.Visible = NoteVisible;
            noteheader = NewNoteHeader;
            notemessage = NewMessage;
        }
        else if (NoteType.ToLower() == "error")
        {
            notediv.Attributes["class"] = divdangercss;
            notediv.Visible = NoteVisible;
            noteheader = NewNoteHeader;
            notemessage = NewMessage;
        }
        else if (NoteType.ToLower() == "warning")
        {
            notediv.Attributes["class"] = divwarningcss;
            notediv.Visible = NoteVisible;
            noteheader = NewNoteHeader;
            notemessage = NewMessage;
        }

    }

    public void ConfirmNotification()
    {

        string divwarningcss = "alert alert-warning alert-dismissible fade show";
        notediv.Attributes["class"] = divwarningcss;
        notediv.Visible = NoteVisible;
        confirmdiv.Visible = true;
        noteheader = NewNoteHeader;
        notemessage = NewMessage;

        string Isconfirmed = Request.Form["confirm_value"];
        if(Isconfirmed == "Yes")
        {
            IsConfirmStatus = true;
        }
        else
        {
            IsConfirmStatus = false;
        }
        HideNptification();
    }
   
    public void HideNptification()
    {
        notediv.Visible = false;
        noteheader = string.Empty;
        notemessage = string.Empty;
    }
    public enum Notificationtype
    {
        success = 0,
        error = 1,
        warning = 2
    };


    protected void Okbutton_Click(object sender, EventArgs e)
    {
        IsConfirmStatus = true;
        HideNptification();
    }

    protected void Cancelbutton_Click(object sender, EventArgs e)
    {
        IsConfirmStatus = false;
        HideNptification();
    }
}
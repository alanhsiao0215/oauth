protected void Page_Load(object sender, EventArgs e)
{
    if (!Page.IsPostBack)
    {
        string code = Request["code"];
        string state = Request["state"];
 
        if (code != null)
        {
            switch (state)
            {
                case "bloglist":
                    GetBloggerList(code);
                    break;
                case "user":
                    GetUserProfile(code);
                    break;
            }
        }
        else
        {
            string error = Request["error"];
            Response.Write(error);
            Response.End();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PicBook
{
    public partial class member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string mid = "1";
            string mid = HttpContext.Current.Request.QueryString["mid"];
            LblUserName.Text = DAL.PicBookRepository.GetUserName(mid);

            if (DAL.PicBookRepository.Isfriend(Session["mid"].ToString(), HttpContext.Current.Request.QueryString["mid"]))
            {
                BtnAddFriend.Visible = false;
            }

            Repeater1.DataSource = DAL.PicBookRepository.GetBoards(mid);
            //Repeater1.DataSource = DAL.ProductRepository.GetPins("1");
            Repeater1.DataBind();
        }

        protected void BtnAddFriend_Click(object sender, CommandEventArgs e)
        {
            

        }

        protected void BtnAddFriend_Click2(object sender, EventArgs e)
        {
            
        }

        protected void BtnAddFriend_Click1(object sender, EventArgs e)
        {
            String friend_mid = HttpContext.Current.Request.QueryString["mid"];
            String status = "p";
            DAL.PicBookRepository.SendFriendRequest(Session["mid"].ToString(), friend_mid, status);
            Response.Redirect("~/allBoards.aspx");
        }
    }
}
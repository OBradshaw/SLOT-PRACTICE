using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SLOT_PRACTICE
{
    public partial class _default : System.Web.UI.Page
    {
  
            String[] imageNames;
            Random random = new Random();
            int Bet;
            int Cash;
            String slot1;
            String slot2;
            String slot3;

            protected void setImages()
            {
                slot1 = imageNames[random.Next(11)];
                slot2 = imageNames[random.Next(11)];
                slot3 = imageNames[random.Next(11)];
                Image1.ImageUrl = "/Images/" + slot1 + ".png";
                Image2.ImageUrl = "/Images/" + slot2 + ".png";
                Image3.ImageUrl = "/Images/" + slot3 + ".png";
            }

            protected void showCash()
            {
                cashLabel1.Text = "Player's Money " + Cash;
            }

            public bool hasBar()
            {
                if (slot1 == "Bar" || slot2 == "Bar" || slot3 == "Bar")
                {
                    return true;
                }
                return false;
            }

            protected void showWin(int multiplier)
            {
                int winnings = Bet * multiplier;
                Cash = Cash + winnings;
                resultLabel1.Text = "You bet " + Bet + " and won " + winnings;
            }

            protected void showLoss()
            {
                resultLabel1.Text = "You Lost " + Bet;
            }

            public int checkWinMultiplier()
            {
                if (slot1 == "Seven" && slot2 == "Seven" && slot3 == "Seven")
                    return 100;
                int cherries = 0 + (slot1 == "Cherry" ? 1 : 0) + (slot2 == "Cherry" ? 1 : 0) + (slot3 == "Cherry" ? 1 : 0);
                return cherries > 0 ? cherries + 1 : 0;
            }

            protected void calculateSpin()
            {
                Bet = int.Parse(txtBet.Text);
                Cash -= Bet;
                if (!hasBar() && checkWinMultiplier() > 0)
                    showWin(checkWinMultiplier());
                else
                    showLoss();
            }

            protected void Page_Load(object sender, EventArgs e)
            {
                if (!Page.IsPostBack)
                    ViewState.Add("Cash", 100);
                Cash = Convert.ToInt32(ViewState["Cash"]);
                imageNames = new String[12] { "Strawberry", "Bar", "Lemon", "Bell", "Clover", "Cherry", "Diamond", "Orange", "Seven", "HorseShoe", "Plum", "Watermelon" };
                setImages();
                showCash();
            }

            protected void leverButton_Click(object sender, EventArgs e)
            {
                setImages();
                calculateSpin();
                showCash();
                ViewState["Cash"] = Cash;
            }



        }
}
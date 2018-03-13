using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kennisopdracht001
{
    public partial class Default : System.Web.UI.Page
    {
        int prod1amnt = 1;
        int prod2amnt = 1;
        int prod3amnt = 1;
        int prod4amnt = 1;

        double prod1price = 4.49;
        double prod2price = 3.25;
        double prod3price = 2.99;
        double prod4price = 8.95;

        double prod1co2okprice = 0.19;
        double prod2co2okprice = 0.14;
        double prod3co2okprice = 0.08;
        double prod4co2okprice = 0.27;

        double prod1total = 0;
        double prod2total = 0;
        double prod3total = 0;
        double prod4total = 0;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void prod1textBox_TextChanged(object sender, EventArgs e)
        {
            prod1amnt = Convert.ToInt32(prod1textBox.Text);
        }

        protected void prod2textBox_TextChanged(object sender, EventArgs e)
        {
            prod2amnt = Convert.ToInt32(prod2textBox.Text);
        }

        protected void prod3textBox_TextChanged(object sender, EventArgs e)
        {
            prod3amnt = Convert.ToInt32(prod3textBox.Text);
        }

        protected void prod4textBox_TextChanged(object sender, EventArgs e)
        {
            prod4amnt = Convert.ToInt32(prod4textBox.Text);
        }


        protected void UpdateCartButton_Click(object sender, EventArgs e)
        {
            string calc = ((prod1amnt * prod1price) + (prod2amnt * prod2price) + (prod3amnt * prod3price) + (prod4amnt * prod4price)).ToString();
            subTotaalLabel.Text = "€" + calc;
        }

        

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        public void CO2okChecked()
        {
            maakCO2okButton.Text = "Maak CO2ok voor €" +
                    ((prod1amnt * prod1co2okprice) +
                    (prod2amnt * prod2co2okprice) +
                    (prod3amnt * prod3co2okprice) +
                    (prod4amnt * prod4co2okprice)
                    ).ToString();
            prod1total = prod1amnt * prod1co2okprice;
            prod2total = prod2amnt * prod2co2okprice;
            prod3total = prod3amnt * prod3co2okprice;
            prod4total = prod4amnt * prod4co2okprice;
        }

        protected void maakCO2okButton_Click(object sender, EventArgs e)
        {
            if (MaakCO2okCheckBox.Checked == false)
            {
                MaakCO2okCheckBox.Checked = true;
                CO2okChecked();
            }
            else if (MaakCO2okCheckBox.Checked == true)
            {
                MaakCO2okCheckBox.Checked = false;
                CO2okChecked();
            }
        }

        protected void infoButton_Click(object sender, EventArgs e)
        {

        }
    }
}
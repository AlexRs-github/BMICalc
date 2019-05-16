using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project4_Ryan
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void submitBtn_Click(object sender, EventArgs e)
        {
            int feet = int.Parse(ftList.SelectedItem.Text);
            int inch = int.Parse(inList.SelectedItem.Text);
            int height = ((feet * 12) + inch);
            int weight = 0;
           
            
            if (int.TryParse(txtBox.Text, out weight) == true)
            {
                double bmi = (weight / Math.Pow(height, 2.0) * 703.0);

                //correct weight = 0-1000
                if (weight > 0 && weight <= 1000) {
                    if (bmi <= 18.5)
                    {
                        //Display the /Images/Underweight.png
                        bmiImage.ImageUrl = "~/Images/Underweight.png";
                        //Display the ansLabel
                        ansLabel.Text = bmi.ToString();
                    } else if (bmi > 18.5 && bmi <= 24.9)
                    {
                        //Display the /Images/healthy.png
                        bmiImage.ImageUrl = "~/Images/healthy.png";
                        //Display the ansLabel
                        ansLabel.Text = bmi.ToString();
                    }
                    else if (bmi >= 25.0 && bmi >= 29.9)
                    {
                        //Display the /Images/overweight.png
                        bmiImage.ImageUrl = "~/Images/overweight.png";
                        //Display the ansLabel
                        ansLabel.Text = bmi.ToString();
                    }
                    else if (bmi >= 30.0)
                    {
                        //Display the /Images/obese.png
                        bmiImage.ImageUrl = "~/Images/obese.png";
                        //Display the ansLabel
                        ansLabel.Text = bmi.ToString();
                    }
                //Incorrect weight
                } else if (weight < 0 || weight > 1000){
                    //Display the errLabel2
                    errLabel2.Text = "Value must be between 1 and 1000";
                //Weight was not entered
                } else
                {
                    //Display the errLabel1
                    errLabel1.Text = "Weight is required";
                }
            }
        }
    }
}
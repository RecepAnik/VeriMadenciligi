using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
public partial class Satıs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Insert code to create basic pie chart
        // See the post entitled "Pie Charts in ASP.NET" for full source code

        // Set pie labels to be outside the pie chart
        this.Chart1.Series[0]["PieLabelStyle"] = "Disabled";

        // Add a legend to the chart and dock it to the bottom-center
        this.Chart1.Legends.Add("Legend1");
        this.Chart1.Legends[0].Enabled = true;
        this.Chart1.Legends[0].Docking = Docking.Bottom;
        this.Chart1.Legends[0].Alignment = System.Drawing.StringAlignment.Center;

        // Show labels in the legend in the format "Name (### %)"
        this.Chart1.Series[0].LegendText = "#VALX (#PERCENT)";

        // By sorting the data points, they show up in proper ascending order in the legend
        this.Chart1.DataManipulator.Sort(PointSortOrder.Descending, Chart1.Series[0]);
     
    }
}
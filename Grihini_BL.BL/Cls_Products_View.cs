using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Grihini_DL.DL;
using System.Web;

namespace Grihini_BL.BL
{
   public class Cls_Products_View
    {

       ClsDB ogde = new ClsDB();

       public DataTable fetchdata(int OperationId)
       {
           SqlParameter[] param = new SqlParameter[1];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;


           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Product_Registration", param);
           return dt;
       }

      


    }
}

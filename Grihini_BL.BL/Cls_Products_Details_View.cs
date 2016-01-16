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
   public class Cls_Products_Details_View
    {
       ClsDB ogde = new ClsDB();


       public DataTable fetchall(int OperationId, int ProductId)
       {
           SqlParameter[] param = new SqlParameter[2];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;

           param[1] = new SqlParameter("@Product_id", SqlDbType.Int);
           param[1].Direction = ParameterDirection.Input;
           param[1].Value = ProductId;

           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Product_Registration", param);
           return dt;
       }



       public DataTable fetchdata(int OperationId, int ProductId)
       {
           SqlParameter[] param = new SqlParameter[2];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;

           param[1] = new SqlParameter("@Product_id", SqlDbType.Int);
           param[1].Direction = ParameterDirection.Input;
           param[1].Value = ProductId;

           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Product_Registration", param);
           return dt;
       }
    }
}

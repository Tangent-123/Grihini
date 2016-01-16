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
   public class Cls_Home
    {
       ClsDB ogde = new ClsDB();




       public DataTable fetchproductphoto(int OperationId)
       {
           SqlParameter[] param = new SqlParameter[1];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;


           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Home", param);
           return dt;
       }
    }
}

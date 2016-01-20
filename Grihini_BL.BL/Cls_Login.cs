using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Grihini_DL.DL;

namespace Grihini_BL.BL
{

  
   public class Cls_Login
    {
       ClsDB ogde = new ClsDB();

       public System.Data.DataTable logindetails(int OperationId, string UserID, string Password)
       {
           SqlParameter[] param = new SqlParameter[3];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;

           param[1] = new SqlParameter("@UserName", SqlDbType.VarChar, 100);
           param[1].Direction = ParameterDirection.Input;
           param[1].Value = UserID;

           param[2] = new SqlParameter("@Password", SqlDbType.VarChar, 100);
           param[2].Direction = ParameterDirection.Input;
           param[2].Value = Password;

           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Login", param);
           return dt;

       }


     
    }
}

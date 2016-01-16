using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Grihini_DL.DL;

namespace Grihini_BL.BL
{
   public class Cls_Admin_Order_View
    {
       ClsDB ogde = new ClsDB();




       public DataTable fetchPro(int OperationId)
       {
           SqlParameter[] param = new SqlParameter[1];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;

           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Order_Management", param);
           return dt;

       }

       public DataTable fetchAddress(int OperationId, int Address_id)
       {
           SqlParameter[] param = new SqlParameter[2];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;

           param[1] = new SqlParameter("@Address_Id", SqlDbType.Int);
           param[1].Direction = ParameterDirection.Input;
           param[1].Value = Address_id;

           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Order_Management", param);
           return dt;
       }

       public DataTable fetchUser(int OperationId, int userid)
       {
           SqlParameter[] param = new SqlParameter[2];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;

           param[1] = new SqlParameter("@User_Id", SqlDbType.Int);
           param[1].Direction = ParameterDirection.Input;
           param[1].Value = userid;

           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Order_Management", param);
           return dt;
       }

       public DataTable fetchproduct(int OperationId, int product_Id)
       {
           SqlParameter[] param = new SqlParameter[2];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;

           param[1] = new SqlParameter("@Product_Id", SqlDbType.Int);
           param[1].Direction = ParameterDirection.Input;
           param[1].Value = product_Id;

           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Order_Management", param);
           return dt;
       }

       public DataTable adddressdownload(int OperationId)
       {
           SqlParameter[] param = new SqlParameter[1];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;

           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Order_Management", param);
           return dt;
       }

       public DataTable rejectproduct(int OperationId,int orderid)
       {
           SqlParameter[] param = new SqlParameter[2];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;

          

           param[1] = new SqlParameter("@order_id", SqlDbType.Int);
           param[1].Direction = ParameterDirection.Input;
           param[1].Value = orderid;


           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Order_Management", param);
           return dt;


       }

       public DataTable confirmproduct(int OperationId, int orderid)
       {
           SqlParameter[] param = new SqlParameter[2];

           param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
           param[0].Direction = ParameterDirection.Input;
           param[0].Value = OperationId;



           param[1] = new SqlParameter("@order_id", SqlDbType.Int);
           param[1].Direction = ParameterDirection.Input;
           param[1].Value = orderid;


           DataTable dt = new DataTable();
           dt = ogde.Return_DataTable("usp_Order_Management", param);
           return dt;

       }
    }
}

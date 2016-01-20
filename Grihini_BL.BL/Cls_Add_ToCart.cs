using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Grihini_DL.DL;

namespace Grihini_BL.BL
{
    public class Cls_Add_ToCart
    {

        ClsDB ogde = new ClsDB();



        public int insertAddtocart(int OperationId, int User_id, int Product_Id, int Quantity, int Size)
        {
            SqlParameter[] param = new SqlParameter[5];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@User_Id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = User_id;

            param[2] = new SqlParameter("@Product_Id", SqlDbType.Int);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = Product_Id;

            param[3] = new SqlParameter("@Quantity", SqlDbType.Int);
            param[3].Direction = ParameterDirection.Input;
            param[3].Value = Quantity;

            param[4] = new SqlParameter("@Size_Id", SqlDbType.Int);
            param[4].Direction = ParameterDirection.Input;
            param[4].Value = Size;


            int dt = ogde.Insert_Update_Del("usp_Txn_Cart", param);
            return dt;


        }

        public DataTable fetchcartcount(int OperationId, int User_id)
        {

            SqlParameter[] param = new SqlParameter[5];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@User_Id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = User_id;

            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Txn_Cart", param);
            return dt;
        }

        public DataTable fetchcartdetails(int OperationId, int userid)
            //, string dcol)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@User_Id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = userid;
           
            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_Txn_Cart", param);
            return dt;
        }

        public int DeleteCart(int OperationId, int Cart_Id)
        {
            SqlParameter[] param = new SqlParameter[2];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@Cart_Id", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = Cart_Id;

            int dt = ogde.Insert_Update_Del("usp_Txn_Cart", param);
            return dt;
        }

        public DataTable buttonvisible(int OperationId, int userid, int ProductId)
        {

              SqlParameter[] param = new SqlParameter[3];

            param[0] = new SqlParameter("@OperationId", SqlDbType.Int);
            param[0].Direction = ParameterDirection.Input;
            param[0].Value = OperationId;

            param[1] = new SqlParameter("@UserId", SqlDbType.Int);
            param[1].Direction = ParameterDirection.Input;
            param[1].Value = userid;

            param[2] = new SqlParameter("@Product_Id", SqlDbType.Int);
            param[2].Direction = ParameterDirection.Input;
            param[2].Value = ProductId;


            DataTable dt = new DataTable();
            dt = ogde.Return_DataTable("usp_User_Registration", param);
            return dt;

        }
    }
}

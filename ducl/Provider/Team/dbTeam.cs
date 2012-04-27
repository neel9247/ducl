using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Provider
{
    public class dbTeam
    {
        public DataTable GetDataTable(string psConnectionString, int piGroupId, int piYearOfPlay)
        {
            SqlConnection con = new SqlConnection(psConnectionString);
            SqlCommand cmd = new SqlCommand("appFillTeam", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@GroupId", SqlDbType.Int).Value = piGroupId;
            cmd.Parameters.Add("@YearOfPlay", SqlDbType.Int).Value = piYearOfPlay;

            SqlDataAdapter adpt = new SqlDataAdapter(cmd);

            DataTable dtLocal = new DataTable();
            try
            {
                con.Open();
                adpt.Fill(dtLocal);
            }
            catch (Exception ex)
            {
                throw (ex);
            }
            finally
            {
                con.Close();
            }

            return dtLocal;
        }

        public DataTable GetDataTableAll(string psConnectionString, int piYearOfPlay)
        {
            SqlConnection con = new SqlConnection(psConnectionString);
            SqlCommand cmd = new SqlCommand("appFillTeamAll", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@YearOfPlay", SqlDbType.Int).Value = piYearOfPlay;

            SqlDataAdapter adpt = new SqlDataAdapter(cmd);

            DataTable dtLocal = new DataTable();
            try
            {
                con.Open();
                adpt.Fill(dtLocal);
            }
            catch (Exception ex)
            {
                throw (ex);
            }
            finally
            {
                con.Close();
            }

            return dtLocal;
        }
    }
}

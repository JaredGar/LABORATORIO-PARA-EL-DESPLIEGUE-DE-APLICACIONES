using PruebaApi.Controllers;
using System.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PruebaApi.Models;
using System.Data.SqlClient;

namespace PruebaApi.Data
{
    public class CarreraData
    {
        public static bool Registrar(Carrera oCarrera)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("usp_registrar", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Carrera", oCarrera.NomCarrera);
                cmd.Parameters.AddWithValue("@Materia", oCarrera.Materia);
                cmd.Parameters.AddWithValue("@Carrera", oCarrera.Especialidad);
                cmd.Parameters.AddWithValue("@Materia", oCarrera.MateriasEspecialidad);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        public static bool Modificar(Carrera oCarrera)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("usp_modificar", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idcarrera", oCarrera.IdCarrera);
                cmd.Parameters.AddWithValue("@Carrera", oCarrera.NomCarrera);
                cmd.Parameters.AddWithValue("@Materias", oCarrera.Materia);
                cmd.Parameters.AddWithValue("@Carrera", oCarrera.Especialidad);
                cmd.Parameters.AddWithValue("@Materias", oCarrera.MateriasEspecialidad);
                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        public static List<Carrera> Listar()
        {
            List<Carrera> oListaCarrera = new List<Carrera>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("usp_listar", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {

                        while (dr.Read())
                        {
                            oListaCarrera.Add(new Carrera()
                            {
                                IdCarrera = Convert.ToInt32(dr["IdMateria"]),
                                NomCarrera = dr["Carrera"].ToString(),
                                Materia = dr["Materia"].ToString(),
                                Especialidad = dr["Especialidad"].ToString(),
                                MateriasEspecialidad = dr["MateriasEspecialidad"].ToString()
                            });
                        }

                    }



                    return oListaCarrera;
                }
                catch (Exception ex)
                {
                    return oListaCarrera;
                }
            }
        }

        public static Carrera Obtener(int idcarrera)
        {
            Carrera oCarrera = new Carrera();
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("usp_obtener", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idcarrera", idcarrera);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {

                        while (dr.Read())
                        {
                            oCarrera = new Carrera()
                            {
                                IdCarrera = Convert.ToInt32(dr["IdMateria"]),
                                NomCarrera = dr["Carrera"].ToString(),
                                Materia = dr["Materia"].ToString(),
                                Especialidad = dr["Especialidad"].ToString(),
                                MateriasEspecialidad = dr["MateriasEspecialidad"].ToString()

                            };
                        }

                    }



                    return oCarrera;
                }
                catch (Exception ex)
                {
                    return oCarrera;
                }
            }
        }

        public static bool Eliminar(int id)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.rutaConexion))
            {
                SqlCommand cmd = new SqlCommand("usp_eliminar", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idcarrera", id);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }
    }
}

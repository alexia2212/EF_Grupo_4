package com.example.examenfinal.Beans;

import java.sql.Timestamp;

public class ServicioBean {
    private int idServicio;
    private float costo;
    private float tiempoDeRealizacion;
    private UsuarioBean idUsuario;
    private TipoServicio idTipoServicio;
    private TipoUsuario idTipoUsuario;

    public int getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(int idServicio) {
        this.idServicio = idServicio;
    }

    public float getCosto() {
        return costo;
    }

    public void setCosto(float costo) {
        this.costo = costo;
    }

    public float getTiempoDeRealizacion() {
        return tiempoDeRealizacion;
    }

    public void setTiempoDeRealizacion(float tiempoDeRealizacion) {
        this.tiempoDeRealizacion = tiempoDeRealizacion;
    }

    public UsuarioBean getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(UsuarioBean idUsuario) {
        this.idUsuario = idUsuario;
    }

    public TipoServicio getIdTipoServicio() {
        return idTipoServicio;
    }

    public void setIdTipoServicio(TipoServicio idTipoServicio) {
        this.idTipoServicio = idTipoServicio;
    }

    public TipoUsuario getIdTipoUsuario() {
        return idTipoUsuario;
    }

    public void setIdTipoUsuario(TipoUsuario idTipoUsuario) {
        this.idTipoUsuario = idTipoUsuario;
    }
}

package code.com.bubu.threadpool.bean;

public class TpgzBean {
    private Integer id;

    private Integer gzyhId;

    private Integer dxyhId;

    private Integer zt;

    private String sj;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGzyhId() {
        return gzyhId;
    }

    public void setGzyhId(Integer gzyhId) {
        this.gzyhId = gzyhId;
    }

    public Integer getDxyhId() {
        return dxyhId;
    }

    public void setDxyhId(Integer dxyhId) {
        this.dxyhId = dxyhId;
    }

    public Integer getZt() {
        return zt;
    }

    public void setZt(Integer zt) {
        this.zt = zt;
    }

    public String getSj() {
        return sj;
    }

    public void setSj(String sj) {
        this.sj = sj == null ? null : sj.trim();
    }
}
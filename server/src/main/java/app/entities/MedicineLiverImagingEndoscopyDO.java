package app.entities;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/8/24 0024.
 */
@Entity(name = "medicine_liver_imaging_endoscopy")
public class MedicineLiverImagingEndoscopyDO {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int patientId;
    private int liverBultrasound;//肝脏B超检查结果
    @Column(name = "liver_bultrasound_date")
    private Date liverBultrasoundDate;//肝脏B超检查日期
    @Column(name = "liver_bultrasound_biliary_tract")
    private int liverBultrasoundBiliaryTract;//肝脏B超排除胆道疾病
    @Column(name = "liver_bultrasound_esophageal_gastric_varices")
    private int liverBultrasoundEsophagealGastricVarices;//肝脏B超排除食管胃底静脉曲张
    private String liverCt;//肝脏CT检查结果
    @Column(name = "liver_ct_date")
    private Date liverCtDate;//肝脏CT检查日期
    @Column(name = "liver_ct_biliary_tract")
    private int liverCtBiliaryTract;//肝脏CT排除胆道疾病
    @Column(name = "liver_ct_esophageal_gastric_varices")
    private int liverCtEsophagealGastricVarices;//肝脏CT排除食管胃底静脉曲张
    private String liverMri;//肝脏MRI
    @Column(name = "liver_mri_date")
    private Date liverMriDate;//肝脏MRI检查日期
    @Column(name = "liver_mri_biliary_tract")
    private int liverMriBiliaryTract;//肝脏MRI排除胆道疾病
    @Column(name = "liver_mri_esophageal_gastric_varices")
    private int liverMriEsophagealGastricVarices;//肝脏MRI排除食管胃底静脉曲张
    private String fibroscan;//Fibroscan检查结果
    private Date fibroscanDate;//Fibroscan检查日期
    @Column(name = "fibroscan_biliary_tract")
    private int fibroscanBiliaryTract;//Fibroscan排除胆道疾病
    @Column(name = "fibroscan_esophageal_gastric_varices")
    private int fibroscanEsophagealGastricVarices;//Fibroscan排除食管胃底静脉曲张
    private String ercp;//ERCP检查结果
    private Date ercpDate;//ERCP检查日期
    private int ercpBiliaryTract;//ERCP排除胆道疾病
    private int ercpEsophagealGastricVarices;//ERCP排除食管胃底静脉曲张
    private String mrcp;//MRCP检查结果
    private Date mrcpDate;//MRCP检查日期
    @Column(name = "mrcp_biliary_tract")
    private int mrcpBiliaryTract;//MRCP排除胆道疾病
    @Column(name = "mrcp_esophageal_gastric_varices")
    private int mrcpEsophagealGastricVarices;//MRCP排除食管胃底静脉曲张
    private String gastroscope;//胃镜
    private Date gastroscopeDate;//胃镜检查日期
    @Column(name = "gastroscope_biliary_tract")
    private int gastroscopeBiliaryTract;//胃镜排除胆道疾病
    private int gastroscopeEsophagealGastricVarices;//胃镜排除食管胃底静脉曲张
    private String image;
    private String imageDescribe;
    private boolean complete;
    @OneToMany(mappedBy = "medicineLiverImagingEndoscopyDO",fetch = FetchType.LAZY,cascade = CascadeType.PERSIST)
    private List<OtherImagingEndoscopyDO> otherImagingEndoscopyDOS;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public int getLiverBultrasound() {
        return liverBultrasound;
    }

    public void setLiverBultrasound(int liverBultrasound) {
        this.liverBultrasound = liverBultrasound;
    }

    public Date getLiverBultrasoundDate() {
        return liverBultrasoundDate;
    }

    public void setLiverBultrasoundDate(Date liverBultrasoundDate) {
        this.liverBultrasoundDate = liverBultrasoundDate;
    }

    public int getLiverBultrasoundBiliaryTract() {
        return liverBultrasoundBiliaryTract;
    }

    public void setLiverBultrasoundBiliaryTract(int liverBultrasoundBiliaryTract) {
        this.liverBultrasoundBiliaryTract = liverBultrasoundBiliaryTract;
    }

    public int getLiverBultrasoundEsophagealGastricVarices() {
        return liverBultrasoundEsophagealGastricVarices;
    }

    public void setLiverBultrasoundEsophagealGastricVarices(int liverBultrasoundEsophagealGastricVarices) {
        this.liverBultrasoundEsophagealGastricVarices = liverBultrasoundEsophagealGastricVarices;
    }

    public String getLiverCt() {
        return liverCt;
    }

    public void setLiverCt(String liverCt) {
        this.liverCt = liverCt;
    }

    public Date getLiverCtDate() {
        return liverCtDate;
    }

    public void setLiverCtDate(Date liverCtDate) {
        this.liverCtDate = liverCtDate;
    }

    public int getLiverCtBiliaryTract() {
        return liverCtBiliaryTract;
    }

    public void setLiverCtBiliaryTract(int liverCtBiliaryTract) {
        this.liverCtBiliaryTract = liverCtBiliaryTract;
    }

    public int getLiverCtEsophagealGastricVarices() {
        return liverCtEsophagealGastricVarices;
    }

    public void setLiverCtEsophagealGastricVarices(int liverCtEsophagealGastricVarices) {
        this.liverCtEsophagealGastricVarices = liverCtEsophagealGastricVarices;
    }

    public String getLiverMri() {
        return liverMri;
    }

    public void setLiverMri(String liverMri) {
        this.liverMri = liverMri;
    }

    public Date getLiverMriDate() {
        return liverMriDate;
    }

    public void setLiverMriDate(Date liverMriDate) {
        this.liverMriDate = liverMriDate;
    }

    public int getLiverMriBiliaryTract() {
        return liverMriBiliaryTract;
    }

    public void setLiverMriBiliaryTract(int liverMriBiliaryTract) {
        this.liverMriBiliaryTract = liverMriBiliaryTract;
    }

    public int getLiverMriEsophagealGastricVarices() {
        return liverMriEsophagealGastricVarices;
    }

    public void setLiverMriEsophagealGastricVarices(int liverMriEsophagealGastricVarices) {
        this.liverMriEsophagealGastricVarices = liverMriEsophagealGastricVarices;
    }

    public String getFibroscan() {
        return fibroscan;
    }

    public void setFibroscan(String fibroscan) {
        this.fibroscan = fibroscan;
    }

    public Date getFibroscanDate() {
        return fibroscanDate;
    }

    public void setFibroscanDate(Date fibroscanDate) {
        this.fibroscanDate = fibroscanDate;
    }

    public int getFibroscanBiliaryTract() {
        return fibroscanBiliaryTract;
    }

    public void setFibroscanBiliaryTract(int fibroscanBiliaryTract) {
        this.fibroscanBiliaryTract = fibroscanBiliaryTract;
    }

    public int getFibroscanEsophagealGastricVarices() {
        return fibroscanEsophagealGastricVarices;
    }

    public void setFibroscanEsophagealGastricVarices(int fibroscanEsophagealGastricVarices) {
        this.fibroscanEsophagealGastricVarices = fibroscanEsophagealGastricVarices;
    }

    public String getErcp() {
        return ercp;
    }

    public void setErcp(String ercp) {
        this.ercp = ercp;
    }

    public Date getErcpDate() {
        return ercpDate;
    }

    public void setErcpDate(Date ercpDate) {
        this.ercpDate = ercpDate;
    }

    public int getErcpBiliaryTract() {
        return ercpBiliaryTract;
    }

    public void setErcpBiliaryTract(int ercpBiliaryTract) {
        this.ercpBiliaryTract = ercpBiliaryTract;
    }

    public int getErcpEsophagealGastricVarices() {
        return ercpEsophagealGastricVarices;
    }

    public void setErcpEsophagealGastricVarices(int ercpEsophagealGastricVarices) {
        this.ercpEsophagealGastricVarices = ercpEsophagealGastricVarices;
    }

    public String getMrcp() {
        return mrcp;
    }

    public void setMrcp(String mrcp) {
        this.mrcp = mrcp;
    }

    public Date getMrcpDate() {
        return mrcpDate;
    }

    public void setMrcpDate(Date mrcpDate) {
        this.mrcpDate = mrcpDate;
    }

    public int getMrcpBiliaryTract() {
        return mrcpBiliaryTract;
    }

    public void setMrcpBiliaryTract(int mrcpBiliaryTract) {
        this.mrcpBiliaryTract = mrcpBiliaryTract;
    }

    public int getMrcpEsophagealGastricVarices() {
        return mrcpEsophagealGastricVarices;
    }

    public void setMrcpEsophagealGastricVarices(int mrcpEsophagealGastricVarices) {
        this.mrcpEsophagealGastricVarices = mrcpEsophagealGastricVarices;
    }

    public String getGastroscope() {
        return gastroscope;
    }

    public void setGastroscope(String gastroscope) {
        this.gastroscope = gastroscope;
    }

    public Date getGastroscopeDate() {
        return gastroscopeDate;
    }

    public void setGastroscopeDate(Date gastroscopeDate) {
        this.gastroscopeDate = gastroscopeDate;
    }

    public int getGastroscopeBiliaryTract() {
        return gastroscopeBiliaryTract;
    }

    public void setGastroscopeBiliaryTract(int gastroscopeBiliaryTract) {
        this.gastroscopeBiliaryTract = gastroscopeBiliaryTract;
    }

    public int getGastroscopeEsophagealGastricVarices() {
        return gastroscopeEsophagealGastricVarices;
    }

    public void setGastroscopeEsophagealGastricVarices(int gastroscopeEsophagealGastricVarices) {
        this.gastroscopeEsophagealGastricVarices = gastroscopeEsophagealGastricVarices;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImageDescribe() {
        return imageDescribe;
    }

    public void setImageDescribe(String imageDescribe) {
        this.imageDescribe = imageDescribe;
    }

    public boolean isComplete() {
        return complete;
    }

    public void setComplete(boolean complete) {
        this.complete = complete;
    }

    public List<OtherImagingEndoscopyDO> getOtherImagingEndoscopyDOS() {
        return otherImagingEndoscopyDOS;
    }

    public void setOtherImagingEndoscopyDOS(List<OtherImagingEndoscopyDO> otherImagingEndoscopyDOS) {
        this.otherImagingEndoscopyDOS = otherImagingEndoscopyDOS;
    }
}

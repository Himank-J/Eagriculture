package com.pojo;
// Generated 30 Apr, 2018 4:01:54 PM by Hibernate Tools 3.5.0.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Machinery generated by hbm2java
 */
public class Machinery implements java.io.Serializable {

	private Integer mid;
	private String mname;
	private String enginehp;
	private String ratedrpm;
	private String gears;
	private String speed;
	private String fronttype;
	private String reartype;
	private String liftcap;
	private String fuelcap;
	private byte[] image;
	private Set demos = new HashSet(0);

	public Machinery() {
	}

	public Machinery(String mname, String enginehp, String ratedrpm, String gears, String speed, String fronttype,
			String reartype, String liftcap, String fuelcap, byte[] image) {
		this.mname = mname;
		this.enginehp = enginehp;
		this.ratedrpm = ratedrpm;
		this.gears = gears;
		this.speed = speed;
		this.fronttype = fronttype;
		this.reartype = reartype;
		this.liftcap = liftcap;
		this.fuelcap = fuelcap;
		this.image = image;
	}

	public Machinery(String mname, String enginehp, String ratedrpm, String gears, String speed, String fronttype,
			String reartype, String liftcap, String fuelcap, byte[] image, Set demos) {
		this.mname = mname;
		this.enginehp = enginehp;
		this.ratedrpm = ratedrpm;
		this.gears = gears;
		this.speed = speed;
		this.fronttype = fronttype;
		this.reartype = reartype;
		this.liftcap = liftcap;
		this.fuelcap = fuelcap;
		this.image = image;
		this.demos = demos;
	}

	public Integer getMid() {
		return this.mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public String getMname() {
		return this.mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getEnginehp() {
		return this.enginehp;
	}

	public void setEnginehp(String enginehp) {
		this.enginehp = enginehp;
	}

	public String getRatedrpm() {
		return this.ratedrpm;
	}

	public void setRatedrpm(String ratedrpm) {
		this.ratedrpm = ratedrpm;
	}

	public String getGears() {
		return this.gears;
	}

	public void setGears(String gears) {
		this.gears = gears;
	}

	public String getSpeed() {
		return this.speed;
	}

	public void setSpeed(String speed) {
		this.speed = speed;
	}

	public String getFronttype() {
		return this.fronttype;
	}

	public void setFronttype(String fronttype) {
		this.fronttype = fronttype;
	}

	public String getReartype() {
		return this.reartype;
	}

	public void setReartype(String reartype) {
		this.reartype = reartype;
	}

	public String getLiftcap() {
		return this.liftcap;
	}

	public void setLiftcap(String liftcap) {
		this.liftcap = liftcap;
	}

	public String getFuelcap() {
		return this.fuelcap;
	}

	public void setFuelcap(String fuelcap) {
		this.fuelcap = fuelcap;
	}

	public byte[] getImage() {
		return this.image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public Set getDemos() {
		return this.demos;
	}

	public void setDemos(Set demos) {
		this.demos = demos;
	}

}

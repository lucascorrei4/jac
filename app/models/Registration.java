package models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import play.data.binding.As;
import play.data.validation.Email;
import play.data.validation.Min;
import play.data.validation.Required;
import play.data.validation.Unique;
import play.db.jpa.Model;
import controllers.Application;
import controllers.GenderEnum;

@Entity
public class Registration extends Model {
	@Required(message="Favor, insira o seu nome.")
	public String name;
	
	@Required(message="Favor, insira o seu sobrenome.")
	public String lastName;
	
	@Email(message = "Favor, insira o seu e-mail no formato nome@provedor.com.br.")
	@Unique
	@Required(message="Favor, insira o seu e-mail.")
	public String email;
	
	@Required(message="Favor, insira sua data de nascimento no formato: 01/01/2002. Ano de nascimento requerido: 2012.")
	public String birthdate;
	
	@Required(message="Favor, insira sua idade.")
	@Min(value = 12, message = "Idade mínima: 13 anos.")
	public int age;
	
	@Required(message="Selecione o sexo. Você é moço ou moça?")
	@Enumerated(EnumType.STRING)
	public GenderEnum gender;
	
	@Required(message="Favor, preencha corretamente o seu endereço.")
	public String address;
	
	public String complement;
	
	public long countryId;
	
	@Required(message="Favor, selecione o estado da sua cidade.")
	@Min(value = 1, message = "Selecione o estado da sua cidade.")
	public long stateId;
	
	@Required(message="Favor, selecione a cidade do seu estado.")
	@Min(value = 1, message = "Selecione a cidade do seu estado.")
	public long cityId;
	
	@Required(message="Favor, insira seu CEP.")
	public String cep;
	
	@Required(message="Favor, insira o número do seu celular.")
	public String phone1;
	
	public String phone2;
	
	public boolean anyChurch;
	
	public String church;

	public String responsable;
	public String responsableRG;
	public String emergencyCall;
	public String emergencyCall2;
	public String allergy;
	public String medicine;

	public boolean asthma;
	public boolean sleepwalk;
	public boolean highPressure;
	public boolean lowPressure;
	public boolean diabetes;
	public boolean fainting;
	public boolean swim;
	public boolean headache;

	public String message;
	public boolean agreeTerm;
	
	public String userCode;
	public boolean isActive;

	@Temporal(TemporalType.TIMESTAMP)
	@As("yyyy-MM-dd HH:mm:ss")
	public Date postedAt = new Date();
	
	public String toString() {
		return getName() + ", " + getCityState();
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public Date getPostedAt() {
		if (postedAt == null) {
			postedAt = new Date();
		}
		return postedAt;
	}

	public void setPostedAt(Date postedAt) {
		this.postedAt = postedAt;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getComplement() {
		return complement;
	}

	public void setComplement(String complement) {
		this.complement = complement;
	}

	public boolean isAgreeTerm() {
		return agreeTerm;
	}

	public void setAgreeTerm(boolean agreeTerm) {
		this.agreeTerm = agreeTerm;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getChurch() {
		return church;
	}

	public void setChurch(String church) {
		this.church = church;
	}

	public String getResponsable() {
		return responsable;
	}

	public void setResponsable(String responsable) {
		this.responsable = responsable;
	}

	public String getResponsableRG() {
		return responsableRG;
	}

	public void setResponsableRG(String responsableRG) {
		this.responsableRG = responsableRG;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}

	public String getMedicine() {
		return medicine;
	}

	public void setMedicine(String medicine) {
		this.medicine = medicine;
	}

	public boolean isAsthma() {
		return asthma;
	}

	public void setAsthma(boolean asthma) {
		this.asthma = asthma;
	}

	public boolean isSleepwalk() {
		return sleepwalk;
	}

	public void setSleepwalk(boolean sleepwalk) {
		this.sleepwalk = sleepwalk;
	}

	public boolean isHighPressure() {
		return highPressure;
	}

	public void setHighPressure(boolean highPressure) {
		this.highPressure = highPressure;
	}

	public boolean isLowPressure() {
		return lowPressure;
	}

	public void setLowPressure(boolean lowPressure) {
		this.lowPressure = lowPressure;
	}

	public boolean isDiabetes() {
		return diabetes;
	}

	public void setDiabetes(boolean diabetes) {
		this.diabetes = diabetes;
	}

	public boolean isFainting() {
		return fainting;
	}

	public void setFainting(boolean fainting) {
		this.fainting = fainting;
	}

	public boolean isSwim() {
		return swim;
	}

	public void setSwim(boolean swim) {
		this.swim = swim;
	}

	public String getEmergencyCall() {
		return emergencyCall;
	}

	public void setEmergencyCall(String emergencyCall) {
		this.emergencyCall = emergencyCall;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public boolean isAnyChurch() {
		return anyChurch;
	}

	public void setAnyChurch(boolean anyChurch) {
		this.anyChurch = anyChurch;
	}

	public String getEmergencyCall2() {
		return emergencyCall2;
	}

	public void setEmergencyCall2(String emergencyCall2) {
		this.emergencyCall2 = emergencyCall2;
	}

	public boolean isHeadache() {
		return headache;
	}

	public void setHeadache(boolean headache) {
		this.headache = headache;
	}

	public long getCountryId() {
		return countryId;
	}

	public void setCountryId(long countryId) {
		this.countryId = countryId;
	}

	public long getStateId() {
		return stateId;
	}

	public void setStateId(long stateId) {
		this.stateId = stateId;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public long getCityId() {
		return cityId;
	}

	public void setCityId(long cityId) {
		this.cityId = cityId;
	}

	public void setGender(GenderEnum gender) {
		this.gender = gender;
	}

	public GenderEnum getGender() {
		return gender;
	}
	
	public String getCityState() {
		State state = State.find("id = " + getStateId()).first();
		City city = City.find("id = " + getCityId()).first();
		return city.getName() + "/" + state.getAcronym();
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}

package com.my.realpro.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.my.realpro.email.EmailSenderEX;
import com.my.realpro.entity.Nagrik;
import com.my.realpro.entity.OrgNagrik;
import com.my.realpro.service.NagrikService;
import com.my.realpro.service.OrgNagerikService;

@Controller
public class MyController {
	@Autowired
	EmailSenderEX emailSenderEX;

	@Autowired
	NagrikService nagrikService;

	@Autowired
	OrgNagerikService orgNagerikService;

	private int otp;
	private String emailMetch;
	private String otpMetch;

	public String getEmailMetch() {
		return emailMetch;
	}

	public void setEmailMetch(String emailMetch) {
		this.emailMetch = emailMetch;
	}

	public String getOtpMetch() {
		return otpMetch;
	}

	public void setOtpMetch(String otpMetch) {
		this.otpMetch = otpMetch;
	}

	public int getOtp() {
		return otp;
	}

	public void setOtp(int otp) {
		this.otp = otp;
	}

	// Message For Login Authentication
	private String mess;

	public String getMess() {
		return mess;
	}

	public void setMess(String mess) {
		this.mess = mess;
	}

	// Validation Perpose.
	private Nagrik nagrikStore;
	private OrgNagrik orgNagrikStore;

	public Nagrik getNagrikStore() {
		return nagrikStore;
	}

	public void setNagrikStore(Nagrik nagrikStore) {
		this.nagrikStore = nagrikStore;
	}

	public OrgNagrik getOrgNagrikStore() {
		return orgNagrikStore;
	}

	public void setOrgNagrikStore(OrgNagrik orgNagrikStore) {
		this.orgNagrikStore = orgNagrikStore;
	}

	// Nagrik Duplicate Data Found.
	String nagrikMatch;

	public String getNagrikMatch() {
		return nagrikMatch;
	}

	public void setNagrikMatch(String nagrikMatch) {
		this.nagrikMatch = nagrikMatch;
	}

	@GetMapping("/")
	public String getHome() {
		setNagrikStore(null);
		setOrgNagrikStore(null);
		setNagrikMatch("");
		setMess("");
		return "index";
	}

	@GetMapping("/nagrik-form")
	public String setNagrikForm(Model m) {
		m.addAttribute("nagrikMatch", getNagrikMatch());
		return "form";
	}

	@PostMapping("/nagrikData")
	public String getNagrikForm(@ModelAttribute("nagrik") Nagrik nagrik) {
		System.out.println(nagrik);
		OrgNagrik byEmail2 = orgNagerikService.getByEmail(nagrik.getEmail());
		if (byEmail2 == null) {
			Nagrik byEmail = nagrikService.getByEmail(nagrik.getEmail());
			if (byEmail == null) {
				setNagrikStore(nagrik);
				setOrgNagrikStore(null);
				return "redirect:/auth";
			} else {
				setNagrikMatch("'Username Alrady Exist!'");
				return "redirect:/nagrik-form";
			}
		} else {
			setNagrikMatch("'Username Alrady Exist!'");
			return "redirect:/nagrik-form";
		}
	}

	@GetMapping("/orgNagrik-form")
	public String setOrgNagrikForm(Model m) {
		m.addAttribute("nagrikMatch", getNagrikMatch());
		return "org_form";
	}

	@PostMapping("orgNagrikData")
	public String getOrgNagrinForm(@ModelAttribute("orgNagrin") OrgNagrik orgNagrik) {
		System.out.println(orgNagrik);
		Nagrik byEmail2 = nagrikService.getByEmail(orgNagrik.getEmail());
		if (byEmail2 == null) {
			OrgNagrik byEmail = orgNagerikService.getByEmail(orgNagrik.getEmail());
			if (byEmail == null) {
				setNagrikStore(null);
				setOrgNagrikStore(orgNagrik);
				return "redirect:/auth";
			} else {
				setNagrikMatch("'Username Alrady Exist!'");
				return "redirect:/orgNagrik-form";
			}
		} else {
			setNagrikMatch("'Username Alrady Exist!'");
			return "redirect:/orgNagrik-form";
		}
	}

	@GetMapping("/auth")
	public String setOath() {
		return "ga";
	}

	@GetMapping("/oathSubmit")
	public String getOath(Model m) {
		if (getOrgNagrikStore() != null) {
			orgNagerikService.saveOrgNagrik(getOrgNagrikStore());
			System.out.println("OrgNagrik Run : " + getOrgNagrikStore());
			return "redirect:/success";
		} else if (getNagrikStore() != null) {
			nagrikService.saveNagrik(getNagrikStore());
			System.out.println("Nagrik Run : " + getNagrikStore());
			return "redirect:/success";
		} else {
			return "redirect:/";
		}
	}

	@GetMapping("/success")
	public String getSuccess(Model m) {

		if (getOrgNagrikStore() != null) {
			System.out.println("OrgNagrik Run : " + getOrgNagrikStore());
			m.addAttribute("id", getOrgNagrikStore().getId());
			m.addAttribute("name", getOrgNagrikStore().getName());
			m.addAttribute("email", getOrgNagrikStore().getEmail());
			return "certificate";
		} else if (getNagrikStore() != null) {
			System.out.println("Nagrik Run : " + getNagrikStore());
			m.addAttribute("id", getNagrikStore().getId());
			m.addAttribute("name", getNagrikStore().getName());
			m.addAttribute("email", getNagrikStore().getEmail());
			return "certificate";
		} else {
			return "redirect:/";
		}
	}

	@GetMapping("/loginForm")
	public String setLogin(Model m) {
		setOtpMetch("");
		setEmailMetch("");
		m.addAttribute("mess", getMess());
		return "LoginForm";
	}

	@PostMapping("/download")
	public String getLogin(@RequestParam("email") String email, @RequestParam("password") String password, Model m) {
		Nagrik byEmailAndPassword2 = nagrikService.getByEmailAndPassword(email, password);
		OrgNagrik byEmailAndPassword = orgNagerikService.getByEmailAndPassword(email, password);
		if (byEmailAndPassword2 != null) {
			setNagrikStore(byEmailAndPassword2);
			return "redirect:/success";
		} else if (byEmailAndPassword != null) {
			setOrgNagrikStore(byEmailAndPassword);
			return "redirect:/success";
		} else {
			setMess("Email And Password Not Metch!");
			return "redirect:/loginForm";
		}

	}

	@GetMapping("/forget")
	public String setForgetPage(Model m) {
		m.addAttribute("emailMessage", getEmailMetch());
		return "forgetxy";
	}

	@PostMapping("/forGetData")
	public String getForget(@RequestParam("email") String emailString, Model m) {
		Nagrik byEmail2 = nagrikService.getByEmail(emailString);
		OrgNagrik byEmail = orgNagerikService.getByEmail(emailString);
		Random random = new Random();
		setOtp(random.nextInt(999999));
		if (byEmail != null) {
			setOrgNagrikStore(byEmail);
			setNagrikStore(null);
			emailSenderEX.sendEmailTest(getOtp(), byEmail.getEmail());
			return "redirect:/otpPage";
		} else if (byEmail2 != null) {
			setOrgNagrikStore(null);
			setNagrikStore(byEmail2);
			emailSenderEX.sendEmailTest(getOtp(), byEmail2.getEmail());
			return "redirect:/otpPage";
		} else {
			setOrgNagrikStore(null);
			setNagrikStore(null);
			setEmailMetch("user not found?");
			return "redirect:/forget";
		}
	}

	@GetMapping("/otpPage")
	public String getOtpPage(Model m) {
		m.addAttribute("otpMessage", getOtpMetch());
		return "OTP";
	}

	@PostMapping("/verifyOtp")
	public String getOtpVarification(@RequestParam("otp") String otp) {
		if (Integer.parseInt(otp) == getOtp()) {
			return "redirect:/updatePage";
		} else {
			setOtpMetch("OTP not metch!");
			return "redirect:/otpPage";
		}
	}

	@GetMapping("/updatePage")
	public String setUpdatePage(Model m) {
		if (getOrgNagrikStore() != null) {
			m.addAttribute("name", getOrgNagrikStore().getName());
			m.addAttribute("email", getOrgNagrikStore().getEmail());
		} else if (getNagrikStore() != null) {
			m.addAttribute("name", getNagrikStore().getName());
			m.addAttribute("email", getNagrikStore().getEmail());
		}
		return "update";
	}

	@PostMapping("/xyz")
	public String getUpdatePage(Model m, @RequestParam("password") String password) {
		if (getOrgNagrikStore() != null) {
			OrgNagrik orgNagrikStore2 = getOrgNagrikStore();
			try {
				orgNagrikStore2.setPassword(password);
				orgNagrikStore2.setId(getOrgNagrikStore().getId());
				orgNagerikService.updataData(orgNagrikStore2);
				setOrgNagrikStore(orgNagrikStore2);
				setNagrikStore(null);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (getNagrikStore() != null) {
			Nagrik nagrikStore2 = getNagrikStore();
			try {
				nagrikStore2.setPassword(password);
				nagrikStore2.setId(getNagrikStore().getId());
				nagrikService.updateData(nagrikStore2);
				setNagrikStore(nagrikStore2);
				setOrgNagrikStore(null);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/success";
	}

}

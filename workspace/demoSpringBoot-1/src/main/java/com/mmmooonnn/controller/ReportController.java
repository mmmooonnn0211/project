package com.mmmooonnn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mmmooonnn.model.LTBean;
import com.mmmooonnn.model.ReportBean;
import com.mmmooonnn.service.LTService;
import com.mmmooonnn.service.ReportService;


@Controller
public class ReportController {
	@Autowired
	private ReportService rp;
	@Autowired
	private LTService lt;

	@GetMapping("/ReportSelectId1.controller")
	public String findByID1(@RequestParam("reportId") Integer reportId, Model m) {
		System.out.println(reportId);
		ReportBean resultBean = rp.findById(reportId);
		System.out.println(resultBean);
		
		m.addAttribute("reportBean", resultBean);
		return "forward:/WEB-INF/jsp/back/lt/ReportSelect.jsp";

	}

	@GetMapping("/ReportSelectId.controller/{reportId}")
	public String findByID(@RequestParam("reportId") Integer reportId, Model m) {
		ReportBean resultBean = rp.findById(reportId);
		m.addAttribute("reportBean", resultBean);
		return "forward:/WEB-INF/jsp/back/lt/ReportUpdate.jsp";

	}

	@GetMapping("/ReportSelectAll")
	public String findReport(Model m) {
		List<ReportBean> reportList = rp.findReport();
		m.addAttribute("reportBeans", reportList);

		return "forward:/WEB-INF/jsp/back/lt/ReportSelectAll.jsp";

	}

	@PostMapping("/Reportinsert.controller")
	public ModelAndView InsertReport(@RequestParam("reportContent") String reportContent,
			@RequestParam("ltId") Integer ltId, Model m) {

		ModelAndView mv = new ModelAndView("redirect:/ReportSelectAll");

		LTBean ltBean = lt.findByLTId(ltId);
		ReportBean reportBean = new ReportBean();
		reportBean.setLTId(ltId);
		reportBean.setReportContent(reportContent);
		rp.InsertReport(reportBean);
		m.addAttribute("reportBean", reportBean);

		return mv;
	}

	@DeleteMapping("/ReportDelete.controller")
	public String deleteByReportId(@RequestParam("reportId") Integer reportId) {
		ReportBean reb = rp.findById(reportId);
		 Integer delete = reb.getLTId();
		 rp.deleteById(reportId);
		 lt.deleteById(delete);
		
		

		return "redirect:/ReportSelectAll";
	}

	@PutMapping("/ReportUpdate.controller")
	public String update(@RequestParam("reportId") Integer reportId,
			@RequestParam("reportContent") String reportContent, @RequestParam("LTId") Integer ltId) {

		try {
			LTBean ltBean = lt.findByLTId(ltId);
			ReportBean reportBean = new ReportBean(reportId, reportContent, ltId);
			rp.update(reportBean);

		} catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:/ReportSelectAll";
	}

}

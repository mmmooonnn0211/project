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
import com.mmmooonnn.model.ReplyBean;
import com.mmmooonnn.model.ReportBean;
import com.mmmooonnn.model.ReportReplyBean;
import com.mmmooonnn.service.LTService;
import com.mmmooonnn.service.ReplyService;
import com.mmmooonnn.service.ReportReplyService;
import com.mmmooonnn.service.ReportService;


@Controller
public class ReportReplyControllerFront {
	@Autowired
	private ReportReplyService rr;
	@Autowired
	private ReplyService rp;

	@GetMapping("/ReportReplySelectId1Front.controller")
	public String findByID1(@RequestParam("reportReplyId") Integer reportReplyId, Model m) {
		
		ReportReplyBean resultBean = rr.findById(reportReplyId);
		
		m.addAttribute("reportreplyBean", resultBean);
		return "forward:/WEB-INF/jsp/front/lt/ReportReplySelect.jsp";

	}

	@GetMapping("/ReportReplySelectIdFront.controller/{reportId}")
	public String findByID(@RequestParam("reportreplyId") Integer reportreplyId, Model m) {
		ReportReplyBean resultBean = rr.findById(reportreplyId);
		m.addAttribute("reportreplyBean", resultBean);
		return "forward:/WEB-INF/jsp/front/lt/ReportReplyUpdate.jsp";

	}

	@GetMapping("/ReportReplySelectAllFront")
	public String findReport(Model m) {
		List<ReportReplyBean> reportList = rr.findReportReply();
		m.addAttribute("reportreplyBeans", reportList);

		return "forward:/WEB-INF/jsp/front/lt/ReportReplySelectAll.jsp";

	}

	@PostMapping("/ReportReplyinsertFront.controller")
	public ModelAndView InsertReport(@RequestParam("reportContent") String reportContent,
			@RequestParam("replyId") Integer replyId, Model m) {

		ModelAndView mv = new ModelAndView("redirect:/LTSelectAllFront");
		ReplyBean replyBean = rp.findByReplyId(replyId);
		ReportReplyBean reportreplyBean = new ReportReplyBean();
		reportreplyBean.setReplyId(replyId);
		reportreplyBean.setReportContent(reportContent);
		
		rr.insertReportReply(reportreplyBean);
		m.addAttribute("reportreplyBean", reportreplyBean);

		return mv;
	}

	@DeleteMapping("/ReportReplyDeleteFront.controller")
	public String deleteByReportReplyId(@RequestParam("reportReplyId") Integer reportReplyId) {
		ReportReplyBean reb = rr.findById(reportReplyId);
		 Integer delete = reb.getReplyId();
		 rr.deleteById(reportReplyId);
		 rp.deleteBYReplyId(delete);
		
		

		return "redirect:/ReportReplySelectAllFront";
	}

	@PutMapping("/ReportReplyUpdateFront.controller")
	public String update(@RequestParam("reportReplyId") Integer reportReplyId,
			@RequestParam("reportContent") String reportContent, @RequestParam("replyId") Integer replyId) {

		try {
			ReplyBean replyBean = rp.findByReplyId(replyId);
			ReportReplyBean reportreplyBean = new ReportReplyBean(reportReplyId,reportContent,replyId);
			rr.update(reportreplyBean);

		} catch (Exception e) {
			// TODO: handle exception
		}
		return "redirect:/ReportReplySelectAllFront";
	}

}

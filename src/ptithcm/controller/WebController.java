package ptithcm.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.News;
import ptithcm.entity.User;

@Controller
@RequestMapping("")
@Transactional
public class WebController {
	@Autowired
	SessionFactory factory;
	@Autowired
	ServletContext context;

	@RequestMapping("index")
	public String default_index() {
		return "user/index";
	}

	@RequestMapping("logout")
	public String default_logout(HttpServletRequest request) {
		HttpSession httpSession = null;
		try {
			httpSession = request.getSession();
			httpSession.removeAttribute("user");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/index.htm";
	}

	@RequestMapping("/category/{id}")
	public String newses(ModelMap model, @PathVariable("id") int id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM News WHERE cate.id= " + id;
		Query query = session.createQuery(hql);
		List<News> list = query.list();
		model.addAttribute("newses", list);
		return "user/news";
	}

	@RequestMapping("page/{id}")
	public String page(ModelMap model, @PathVariable("id") int id) {
		try {
			Session session = factory.getCurrentSession();
			News news = (News) session.get(News.class, id);
			model.addAttribute("news", news);
		} catch (Exception e) {
			// TODO: handle exception
		}

		return "user/page";
	}

	@RequestMapping(value = "user/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpServletRequest request, HttpServletResponse response) {
		HttpSession httpSession = null;
		Session session = null;
		List<User> users = null;
		String hql = "";
		try {
			session = factory.getCurrentSession();
			hql = "FROM User WHERE username = '" + username + "' AND password = '" + password + "'";
			Query query = session.createQuery(hql);
			users = query.list();
			if (users.size() > 0) {
				httpSession = request.getSession();
				httpSession.setAttribute("user", users.get(0));
				return "redirect:/admin/index.htm";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "user/login";
	}

	@ModelAttribute("listNow")
	public List<News> getNews() {
		Session session = factory.getCurrentSession();
		String hql = "FROM News ORDER BY id DESC";
		Query query = session.createQuery(hql);
		List<News> list = query.list();
		return list;
	}

	@ModelAttribute("cates")
	public List<News> getCase() {
		Session session = factory.getCurrentSession();
		String hql = "FROM Category";
		Query query = session.createQuery(hql);
		List<News> list = query.list();
		return list;
	}
}

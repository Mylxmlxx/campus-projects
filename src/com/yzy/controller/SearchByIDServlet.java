package com.yzy.controller;

import com.yzy.dao.StudentDao;
import com.yzy.entity.Student;
import com.yzy.service.StudentDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author yzy
 * @version 1.0
 * @description TODO
 * @date 2023/6/21 23:26
 */
@WebServlet(value = "/searchByID")
public class SearchByIDServlet extends HttpServlet {

    StudentDao studentDao = new StudentDaoImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String param = req.getParameter("param");
        if (param .equals(" ")  || param.isEmpty()) {
            req.setAttribute("students", studentDao.selectAll());
            req.getRequestDispatcher("/main.jsp").forward(req, resp);
            return;
        }

        List<Student> students = studentDao.selectByID(param);

        req.setAttribute("students", students);
        req.getRequestDispatcher("/search.jsp").forward(req, resp);
    }
}

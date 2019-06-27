package com.jcg.mongodb.servlet;
import static org.junit.Assert.*;
import static org.mockito.Mockito.*;
import java.io.*;
import javax.servlet.http.*;

import org.apache.catalina.ssi.SSIServlet;
import org.apache.commons.io.FileUtils;
import org.junit.Test;
import org.mockito.Mockito;
import com.jcg.*;
import com.search.*;
import com.search.servlet.Search;
import com.jcg.mongodb.*;

import static org.mockito.Mockito.when;  
import static org.mockito.Mockito.*; 

public class TestMyServlet extends Mockito{

    @Test
    public void testServlet() throws Exception {
        HttpServletRequest request = mock(HttpServletRequest.class);       
        HttpServletResponse response = mock(HttpServletResponse.class);    

        when(request.getParameter("keytext")).thenReturn("Engineer");
      //  when(request.getParameter("password")).thenReturn("secret");

        StringWriter stringWriter = new StringWriter();
        PrintWriter writer = new PrintWriter(stringWriter);
        when(response.getWriter()).thenReturn(writer);

        new Search().doPost(request, response);

        verify(request, atLeast(1)).getParameter("keytext"); // only if you want to verify username was called...
        writer.flush(); // it may not have been flushed yet...
        assertTrue(stringWriter.toString().contains(".*\\.Engineer.*\\$"));
    }
}
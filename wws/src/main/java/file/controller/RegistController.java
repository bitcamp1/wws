package file.controller;


import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.validation.BindException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import file.model.FileBean;

public class RegistController extends SimpleFormController {

    private static final Log LOG = LogFactory.getLog(RegistController.class);

    public RegistController() {
        setCommandClass(FileBean.class);
        setCommandName("regist");
    }

    @Override
    protected ModelAndView onSubmit(HttpServletRequest request, HttpServletResponse response, Object command,
            BindException errors) throws Exception {

        FileBean file = (FileBean) command;

        MultipartFile multipartFile = file.getFile();
        LOG.debug(" ##### fileupload deptno : " + file.getfIdx());
        String fileName = "";

        if (multipartFile != null) {

            fileName = multipartFile.getOriginalFilename();
            LOG.debug(" ######## fileName : " + fileName);

            writeFile(multipartFile);
            // do whatever you want
        }

        return new ModelAndView("file/list", "fileName", fileName);
    }

    private void writeFile(MultipartFile multipartFile) {
        OutputStream out = null;
        try {

            out = new FileOutputStream("d:/" + multipartFile.getOriginalFilename());
            BufferedInputStream bis = new BufferedInputStream(multipartFile.getInputStream());
            byte[] buffer = new byte[8106];
            int read;
            while ((read = bis.read(buffer)) > 0) {
                out.write(buffer, 0, read);
            }

        } catch (IOException ioe) {
            LOG.error(ioe);
        } finally {
            IOUtils.closeQuietly(out);
        }
    }
}
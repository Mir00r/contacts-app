package com.mir00r.cb

import grails.util.Holders
import org.springframework.web.multipart.MultipartFile

/**
 * @project IntelliJ IDEA
 * @author mir00r on 2019-09-01
 */
class FileUtil {
    public static String getRootPath() {
        return Holders.servletContext?.getRealPath("")
    }


    public static File makeDirectory(String path) {
        File file = new File(path)
        if (!file.exists()) {
            file.mkdirs()
        }
        return file
    }

//    request.getFile("productFile")
    public static String uploadContactImage(Integer contactId, MultipartFile multipartFile) {
        if (contactId && multipartFile) {
            String contactImagePath = "${getRootPath()}contact-image/"
            makeDirectory(contactImagePath)
            multipartFile.transferTo(new File(contactImagePath, contactId + "-" + multipartFile.originalFilename))
            return multipartFile.originalFilename
        }
        return ""
    }
}

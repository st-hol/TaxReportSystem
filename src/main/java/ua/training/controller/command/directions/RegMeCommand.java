package ua.training.controller.command.directions;



import ua.training.controller.command.Command;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * This class is responsible for forwarding
 * to registering account page
 * from home page.
 *
 * @author Stanislav Holovachuk
 */
public class RegMeCommand implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        return "/WEB-INF/common/registration.jsp";
    }
}

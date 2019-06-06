package ua.training.controller.command.directions;



import ua.training.controller.command.Command;
import ua.training.controller.command.CommandUtility;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static ua.training.controller.command.TextConstants.Routes.TO_SET_TAXABLE_ITEMS;

/**
 * This class is responsible for forwarding
 * to setting taxable items per person page.
 *
 * @author Stanislav Holovachuk
 */

public class SetTaxable implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        //to prevent user coming back to cached pages after logout
        CommandUtility.disallowBackToCached(request, response);

        CommandUtility.populateTaxableItemsAttribute(request);
        CommandUtility.populateUsersAssignedToInspectorAttribute(request);
        return TO_SET_TAXABLE_ITEMS;
    }
}

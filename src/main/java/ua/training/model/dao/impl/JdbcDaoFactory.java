package ua.training.model.dao.impl;


import ua.training.model.dao.*;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class JdbcDaoFactory extends DaoFactory {

    private DataSource dataSource = ConnectionPoolHolder.getDataSource();

    @Override
    public ReportDao createReportDao() {
        return new JdbcReportDao(getConnection());
    }

    @Override
    public ComplaintDao createComplaintDao() {
        return new JdbcComplaintDao(getConnection());
    }

    @Override
    public UserDao createUserDao() {
        return new JdbcUserDao(getConnection());
    }

    @Override
    public TaxableItemDao createTaxableItemDao() {
        return new JdbcTaxableItemDao(getConnection());
    }

    private Connection getConnection() {
        try {
            return dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
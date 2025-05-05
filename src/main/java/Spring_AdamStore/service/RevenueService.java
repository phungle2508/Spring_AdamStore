package Spring_AdamStore.service;

import Spring_AdamStore.dto.response.OrderRevenueDTO;
import Spring_AdamStore.dto.response.RevenueByMonthDTO;

import java.time.LocalDate;
import java.util.List;

public interface RevenueService {

    List<RevenueByMonthDTO> getRevenueByMonth(LocalDate startDate, LocalDate endDate);

    List<OrderRevenueDTO> getOrderRevenueByDate(LocalDate startDate, LocalDate endDate);
}

package Spring_AdamStore.service;

import Spring_AdamStore.dto.response.OrderRevenueDTO;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.dto.response.RevenueByMonthDTO;
import org.springframework.data.domain.Pageable;

import java.time.LocalDate;
import java.util.List;

public interface RevenueService {

    List<RevenueByMonthDTO> getRevenueByMonth(LocalDate startDate, LocalDate endDate);

    PageResponse<OrderRevenueDTO> getOrderRevenueByDate(Pageable pageable, LocalDate startDate, LocalDate endDate);
}

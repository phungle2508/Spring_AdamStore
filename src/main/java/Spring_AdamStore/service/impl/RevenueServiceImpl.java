package Spring_AdamStore.service.impl;

import Spring_AdamStore.dto.response.OrderRevenueDTO;
import Spring_AdamStore.dto.response.RevenueByMonthDTO;
import Spring_AdamStore.repository.PaymentHistoryRepository;
import Spring_AdamStore.service.RevenueService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Slf4j(topic = "REVENUE-SERVICE")
@RequiredArgsConstructor
@Service
public class RevenueServiceImpl implements RevenueService {

    private final PaymentHistoryRepository paymentHistoryRepository;

    @Override
    public List<RevenueByMonthDTO> getRevenueByMonth(LocalDate startDate, LocalDate endDate) {
        LocalDateTime startDateTime = startDate.atStartOfDay();
        LocalDateTime endDateTime = endDate.atTime(23, 59, 59);

        return paymentHistoryRepository.getRevenueByMonth(startDateTime, endDateTime);
    }

    @Override
    public List<OrderRevenueDTO> getOrderRevenueByDate(LocalDate startDate, LocalDate endDate) {

        return paymentHistoryRepository.getRevenueOrdersByDate(startDate, endDate);
    }

}

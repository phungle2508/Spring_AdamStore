package Spring_AdamStore.exception;

import lombok.AllArgsConstructor;
import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
@AllArgsConstructor
public enum ErrorCode {

    UNCATEGORIZED_EXCEPTION(9999, "Lỗi hệ thống không xác định", HttpStatus.INTERNAL_SERVER_ERROR),
    UNAUTHENTICATED(1000, "Chưa xác thực người dùng", HttpStatus.UNAUTHORIZED),
    UNAUTHORIZED(1001, "Bạn chưa được phân quyền truy cập", HttpStatus.FORBIDDEN),
    USER_EXISTED(1002, "User đã tồn tại trong hệ thống", HttpStatus.BAD_REQUEST),
    USER_NOT_EXISTED(1003, "Người dùng không tồn tại trong hệ thống", HttpStatus.NOT_FOUND),
    INVALID_PASSWORD(1004, "Mật khẩu không chính xác", HttpStatus.UNAUTHORIZED),
    INVALID_OLD_PASSWORD(1024, "Mật khẩu cũ không chính xác", HttpStatus.BAD_REQUEST),
    INVALID_SORT_FIELD(1022, "Thuộc tính không hợp lệ để sắp xếp", HttpStatus.BAD_REQUEST),
    INVALID_SORT_FORMAT(1023, "Định dạng sắp xếp không hợp lệ", HttpStatus.BAD_REQUEST),
    EMAIL_SEND_FAILED(1017, "Lỗi khi gửi email", HttpStatus.BAD_REQUEST),
    EMAIL_EXISTED(1036, "Email đã tồn tại trong hệ thống", HttpStatus.BAD_REQUEST),
    EMAIL_DISABLED(1037, "Email của bạn đã bị vô hiệu hóa", HttpStatus.FORBIDDEN),
    PHONE_EXISTED(1038, "Phone đã tồn tại trong hệ thống", HttpStatus.BAD_REQUEST),
    PHONE_DISABLED(1039, "Phone của bạn đã bị vô hiệu hóa", HttpStatus.FORBIDDEN),
    TOKEN_TYPE_INVALID(1035, "Loại token không hợp lệ", HttpStatus.UNAUTHORIZED),
    INVALID_REFRESH_TOKEN(1034, "Refresh token không hợp lệ hoặc đã hết hạn", HttpStatus.UNAUTHORIZED),
    PROVINCE_EXISTED(1002, "Province đã tồn tại trong hệ thống", HttpStatus.BAD_REQUEST),
    PROVINCE_NOT_EXISTED(1003, "Province không tồn tại trong hệ thống", HttpStatus.NOT_FOUND),
    PRODUCT_EXISTED(1002, "Product đã tồn tại trong hệ thống", HttpStatus.BAD_REQUEST),
    PRODUCT_NOT_EXISTED(1003, "Product không tồn tại trong hệ thống", HttpStatus.NOT_FOUND),
    CATEGORY_EXISTED(1002, "Category đã tồn tại trong hệ thống", HttpStatus.BAD_REQUEST),
    CATEGORY_NOT_EXISTED(1003, "Category không tồn tại trong hệ thống", HttpStatus.NOT_FOUND),
    BRANCH_EXISTED(1002, "Branch đã tồn tại trong hệ thống", HttpStatus.BAD_REQUEST),
    BRANCH_NOT_EXISTED(1003, "Branch không tồn tại trong hệ thống", HttpStatus.NOT_FOUND),
    VERIFICATION_CODE_NOT_FOUND(1018, "Mã xác nhận không hợp lệ", HttpStatus.NOT_FOUND),
    FORGOT_PASSWORD_TOKEN_NOT_FOUND(1025, "Token đặt lại mật khẩu không tồn tại hoặc đã hết hạn", HttpStatus.NOT_FOUND),
    VERIFICATION_CODE_EXPIRED(1019, "Mã xác nhận đã hết hạn", HttpStatus.BAD_REQUEST)
            ;



    private final int code;
    private final String message;
    private final HttpStatus statusCode;
}

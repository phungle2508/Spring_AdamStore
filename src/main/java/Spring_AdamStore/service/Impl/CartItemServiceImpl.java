package Spring_AdamStore.service.Impl;

import Spring_AdamStore.dto.request.CartItemRequest;
import Spring_AdamStore.dto.response.CartItemResponse;
import Spring_AdamStore.dto.response.PageResponse;
import Spring_AdamStore.entity.*;
import Spring_AdamStore.exception.AppException;
import Spring_AdamStore.exception.ErrorCode;
import Spring_AdamStore.mapper.CartItemMapper;
import Spring_AdamStore.repository.CartItemRepository;
import Spring_AdamStore.repository.CartRepository;
import Spring_AdamStore.repository.ProductVariantRepository;
import Spring_AdamStore.repository.UserRepository;
import Spring_AdamStore.service.AuthService;
import Spring_AdamStore.service.CartItemService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@Slf4j(topic = "CART-ITEM-SERVICE")
@RequiredArgsConstructor
public class CartItemServiceImpl implements CartItemService {

    private final CartItemRepository cartItemRepository;
    private final ProductVariantRepository productVariantRepository;
    private final CartRepository cartRepository;
    private final UserRepository userRepository;
    private final AuthService authService;
    private final CartItemMapper cartItemMapper;

    @Override
    public CartItemResponse create(CartItemRequest request) {

        User user = userRepository.findByEmail(authService.getCurrentUsername())
                .orElseThrow(() -> new AppException(ErrorCode.USER_NOT_EXISTED));

        Cart cart = cartRepository.findByUserId(user.getId())
                .orElseGet(() -> {
                    Cart newCart = new Cart();
                    newCart.setUser(user);
                    return cartRepository.save(newCart);
                });

        ProductVariant productVariant = productVariantRepository.findById(request.getProductVariantId())
                .orElseThrow(() -> new AppException(ErrorCode.PRODUCT_VARIANT_NOT_EXISTED));

        // check sl hang con
        if (productVariant.getQuantity() < request.getQuantity()) {
            throw new AppException(ErrorCode.OUT_OF_STOCK);
        }

        Optional<CartItem> existingCartItem = cartItemRepository
                .findByCartIdAndProductVariantId(cart.getId(), request.getProductVariantId());

        if (existingCartItem.isPresent()) {
            CartItem cartItem = existingCartItem.get();
            cartItem.setQuantity(cartItem.getQuantity() + request.getQuantity());

            return cartItemMapper.toCartItemResponse(cartItemRepository.save(cartItem));
        }
        else{
            CartItem cartItem = new CartItem().builder()
                    .quantity(request.getQuantity())
                    .price(productVariant.getPrice())
                    .productVariant(productVariant)
                    .cart(cart)
                    .build();

            return cartItemMapper.toCartItemResponse(cartItemRepository.save(cartItem));
        }
    }

    @Override
    public CartItemResponse fetchById(Long id) {
        return null;
    }

    @Override
    public PageResponse<CartItemResponse> fetchAll(int pageNo, int pageSize, String sortBy) {
        return null;
    }

    @Override
    public CartItemResponse update(Long id, CartItemRequest request) {
        return null;
    }

    @Override
    public void delete(Long id) {

    }

    private CartItem findCartItemById(Long id) {
        return cartItemRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.CART_ITEM_NOT_EXISTED));
    }

}

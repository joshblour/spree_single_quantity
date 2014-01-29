Deface::Override.new(
  :virtual_path  => "spree/products/_cart_form",
  :replace_contents => "div.add-to-cart",
  :text           => "<%= hidden_field_tag :quantity, 1 %>
      <%= button_tag Spree.t(:add_to_cart), class: 'large primary', id: 'add-to-cart-button', type: :submit",
  :name          => "remove_quantity_from_product_cart_form"
  )
  
Deface::Override.new(
  :virtual_path  => "spree/orders/_form",
  :replace_contents=> "[data-hook='cart_items_headers']",
  :text           => "<th class='cart-item-description-header' colspan='2'><%= Spree.t(:item) %></th>
                      <th class='cart-item-price-header'><%= Spree.t(:price) %></th>
                      <th class='cart-item-delete-header'></th>",
  :name          => "remove_quantity_and_total_from_cart_header"
  )

Deface::Override.new(
  :virtual_path  => "spree/orders/_line_item",
  :remove       =>  "[data-hook='cart_item_quantity']",
  :name          => "remove_quantity_from_line_item"
  )
  
  
Deface::Override.new(
  :virtual_path  => "spree/orders/_line_item",
  :remove       =>  "[data-hook='cart_item_total']",
  :name          => "remove_total_from_line_item"
  )

Deface::Override.new(
  :virtual_path  => "spree/shared/_order_details",
  :replace_contents=> "[data-hook='order_details_line_items_headers']",
  :text           => "<th colspan='2'><%= Spree.t(:item) %></th>
                      <th class='price'></th>
                      <th class='qty'></th>
                      <th class='total'><span><%= Spree.t(:price) %></span></th>",
  :name          => "remove_quantity_and_total_from_cart_header"
  )

  Deface::Override.new(
  :virtual_path  => "spree/shared/_order_details",
    :replace_contents       =>  "[data-hook='order_item_price']",
    :text => '',
    :name          => "remove_price_from_cart_summary"
    )


  Deface::Override.new(
  :virtual_path  => "spree/shared/_order_details",
    :replace_contents       =>  "[data-hook='order_item_qty']",
    :text => '',
    :name          => "remove_qty_from_cart_summary"
    )

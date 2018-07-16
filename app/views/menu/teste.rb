<!--    <% #if  user_signed_in? %>
    <%   # @ordermeal = OrderMeal.find_by(order_id: @order.id, meal_id: meal.id) %>
    <%= #form_for @ordermeal do |f| %>
    <%= #f.select :quantity, [["1", 1], ["2", 2], ["3", 3], ["4", 4], ["5", 5], ["6", 6], ["7", 7], ["8", 8]], {}, {class: "form-control"} %>
    <%= #f.hidden_field @meal_id, value: meal.id %>
    <%= #f.hidden_field @order_id, value: @order.id %>

    <%= #f.submit "Adicionar", class: "btn btn-sm btn-success " %>
    <% #end %>


<% #end %>
-->

import 'package:e_comerence_app/features/my%20orders/model/order.dart';

class OrderRepository {
  List<Order> getOrder() {
    return [
      Order(
        OrderNumber: '12398',
        itemCount: 2,
        totalAmount: 298.33,
        status: OrderStatus.active,
        imageUrl: 'assets/images/shoe.jpg',
        orderTime: DateTime.now().subtract(Duration(hours: 2)),
      ),

      Order(
        OrderNumber: '758483',
        itemCount: 3,
        totalAmount: 2398.33,
        status: OrderStatus.active,
        imageUrl: 'assets/images/laptop.jpg',
        orderTime: DateTime.now().subtract(Duration(hours: 3)),
      ),

      Order(
        OrderNumber: '938372',
        itemCount: 1,
        totalAmount: 98.33,
        status: OrderStatus.cancelled,
        imageUrl: 'assets/images/shoes2.jpg',
        orderTime: DateTime.now().subtract(Duration(hours: 1)),
      ),

      Order(
        OrderNumber: '323498',
        itemCount: 4,
        totalAmount: 9998.33,
        status: OrderStatus.completed,
        imageUrl: 'assets/images/laptop.jpg',
        orderTime: DateTime.now().subtract(Duration(hours: 1)),
      ),

      Order(
        OrderNumber: '32434',
        itemCount: 1,
        totalAmount: 208.33,
        status: OrderStatus.active,
        imageUrl: 'assets/images/shoe2.jpg',
        orderTime: DateTime.now().subtract(Duration(hours: 6)),
      ),
    ];
  }

  List getOrdersByStatus(OrderStatus status) {
    return getOrder().where((order) => order.status == status).toList();
  }
}

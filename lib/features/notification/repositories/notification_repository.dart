import 'package:e_comerence_app/features/notification/models/notification_type.dart';

class NotificationRepository {
  List<NotificationItem> getNotifications() {
    return [
      NotificationItem(
        title: 'Order Conformed',
        message: 'Your Order #123456 has been conformed and is begin procceed.',
        time: "2 minute ago",
        type: NotificationType.order,
        isRead: true,
      ),
      NotificationItem(
        title: 'Special Offer',
        message: 'Get 20% off on all shoes on this weekend.',
        time: "1 hour ago",
        type: NotificationType.promo,
      ),
      NotificationItem(
        title: 'out for delivery',
        message: 'Your Order #123456 is out for delivery.',
        time: "2 hours ago",
        type: NotificationType.delivery,
        isRead: true,
      ),
      NotificationItem(
        title: 'Payemt Successful',
        message: 'Payment for order #123456 was successful.',
        time: "2 minute ago",
        type: NotificationType.payment,
      ),
      NotificationItem(
        title: 'Order Conformed',
        message: 'Your Order #123456 has been conformed and is begin procceed.',
        time: "2 minute ago",
        type: NotificationType.promo,
        isRead: true,
      ),
    ];
  }
}

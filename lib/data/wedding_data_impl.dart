import 'wedding_item_data.dart';

class WeddingItemRepositoryImpl implements WeddingItemRepository {
  @override
  Future<List<WeddingItem>> fetchWeddingItemList() {
    return Future.value(kWeddingItems);
  }
}

const kWeddingItems = <WeddingItem>[
  WeddingItem(
      name: 'Romain Hoogmoed',
      money: '300K',
      time: 'romain.hoogmoed@example.com'),
  WeddingItem(
      name: 'Emilie Olsen',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Téo Lefevre',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Nicole Cruz',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Ramna Peixoto',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Jose Ortiz',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Alma Christensen',
      money: '300K',
      time: 'alma.christensen@example.com'),
  WeddingItem(
      name: 'Sergio Hill',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Malo Gonzalez',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Miguel Owens',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Lilou Dumont',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Ashley Stewart',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Roman Zhang',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Ryan Roberts',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Sadie Thomas',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018'),
  WeddingItem(
      name: 'Belen Serrano',
      money: '300K',
      time: 'thứ 4, ngày 20, tháng 11, 2018')
];

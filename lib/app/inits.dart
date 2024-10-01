part of '_index.dart';

Future<void> inits() async {
  logx.wtf('inits start');

  // await RM.storageInitializer(StoreHive());

  Serv.sample.init();

  Serv.product.init();
  logx.wtf('inits success');
  Serv.auth.init();
}

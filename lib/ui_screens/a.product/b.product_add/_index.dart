import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_words/english_words.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbols.dart';
import 'package:recording/dt_domains/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:uuid/uuid.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_add.data.dart';
part 'b.product_add.ctrl.dart';
part 'c.product_add.view.dart';
part 'widgets/a.product_add.appbar.dart';
part 'widgets/b.product_add.fab.dart';
part 'widgets/c.product_add.charlie.dart';
part 'widgets/d.product_add.delta.dart';
part 'widgets/e.product_add.echo.dart';
part 'widgets/g.product_add.name.dart';
part 'widgets/f.product_add.desc.dart';
part 'widgets/i.product_add.quantity.dart';
part 'widgets/j.product_add.submit.dart';
part 'widgets/h.product_add.price.dart';

ProductAddData get _dt => Data.productAdd.st;
ProductAddCtrl get _ct => Ctrl.productAdd;

// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import "../runner/plugin/remote_platform_helpers.dart";
import "../runner/node/socket_channel.dart";

/// Bootstraps a browser test to communicate with the test runner.
///
/// This should NOT be used directly, instead use the `test/pub_serve`
/// transformer which will bootstrap your test and call this method.
void internalBootstrapNodeTest(Function getMain()) {
  var channel = serializeSuite(getMain);
  socketChannel().pipe(channel);
}

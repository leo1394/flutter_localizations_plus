// Copyright (c) 2025, the Dart project authors. Use of this source code
// is governed by a MIT license that can be found in the LICENSE file.

/// Abstract class to define the contract
abstract class JsonSerializable {
  Map<String, dynamic> toJson();
  factory JsonSerializable.fromJson(Map<String, dynamic> json) =>
      throw UnimplementedError();
}

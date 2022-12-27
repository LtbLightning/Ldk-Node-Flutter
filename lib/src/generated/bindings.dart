// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.51.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'package:meta/meta.dart';
import 'package:meta/meta.dart';
import 'dart:ffi' as ffi;

abstract class Native {
  Future<LdkLiteInstance> initBuilder({required Config config, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kInitBuilderConstMeta;

  Future<String> startLdkNode({required LdkLiteInstance ldkLiteInstance, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kStartLdkNodeConstMeta;

  Future<String> newFundingAddress({required LdkLiteInstance ldkLiteInstance, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewFundingAddressConstMeta;

  Future<void> sync({required LdkLiteInstance ldkLiteInstance, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSyncConstMeta;

  Future<NodeInfo> getNodeInfo({required LdkLiteInstance ldkLiteInstance, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetNodeInfoConstMeta;

  Future<String> connectOpenChannel(
      {required LdkLiteInstance ldkLiteInstance,
      required String nodePubkeyAndAddress,
      required int channelAmountSats,
      required bool announceChannel,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectOpenChannelConstMeta;

  DropFnType get dropOpaqueLdkLiteInstance;
  ShareFnType get shareOpaqueLdkLiteInstance;
  OpaqueTypeFinalizer get LdkLiteInstanceFinalizer;
}

@sealed
class LdkLiteInstance extends FrbOpaque {
  final Native bridge;
  LdkLiteInstance.fromRaw(int ptr, int size, this.bridge) : super.unsafe(ptr, size);
  @override
  DropFnType get dropFn => bridge.dropOpaqueLdkLiteInstance;

  @override
  ShareFnType get shareFn => bridge.shareOpaqueLdkLiteInstance;

  @override
  OpaqueTypeFinalizer get staticFinalizer => bridge.LdkLiteInstanceFinalizer;
}

class Config {
  /// The path where the underlying LDK and BDK persist their data.
  final String storageDirPath;

  /// The URL of the utilized Esplora server. default 'https://blockstream.info/api'
  final String esploraServerUrl;

  /// The used Bitcoin network.
  final Network network;

  /// The IP address and TCP port the node will listen on.
  final String? listeningAddress;

  /// The default CLTV expiry delta to be used for payments.
  final int defaultCltvExpiryDelta;

  Config({
    required this.storageDirPath,
    required this.esploraServerUrl,
    required this.network,
    this.listeningAddress,
    required this.defaultCltvExpiryDelta,
  });
}

enum Network {
  ///Classic Bitcoin
  Bitcoin,

  ///Bitcoin’s testnet
  Testnet,

  ///Bitcoin’s signet
  Signet,

  ///Bitcoin’s regtest
  Regtest,
}

class NodeInfo {
  final String nodePubKey;
  final int numChannels;
  final int numUsableChannels;
  final int localBalanceMsat;
  final int numPeers;

  NodeInfo({
    required this.nodePubKey,
    required this.numChannels,
    required this.numUsableChannels,
    required this.localBalanceMsat,
    required this.numPeers,
  });
}

class NativeImpl implements Native {
  final NativePlatform _platform;
  factory NativeImpl(ExternalLibrary dylib) => NativeImpl.raw(NativePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory NativeImpl.wasm(FutureOr<WasmModule> module) => NativeImpl(module as ExternalLibrary);
  NativeImpl.raw(this._platform);
  Future<LdkLiteInstance> initBuilder({required Config config, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_config(config);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_init_builder(port_, arg0),
      parseSuccessData: _wire2api_LdkLiteInstance,
      constMeta: kInitBuilderConstMeta,
      argValues: [config],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kInitBuilderConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "init_builder",
        argNames: ["config"],
      );

  Future<String> startLdkNode({required LdkLiteInstance ldkLiteInstance, dynamic hint}) {
    var arg0 = _platform.api2wire_LdkLiteInstance(ldkLiteInstance);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_start_ldk_node(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kStartLdkNodeConstMeta,
      argValues: [ldkLiteInstance],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kStartLdkNodeConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "start_ldk_node",
        argNames: ["ldkLiteInstance"],
      );

  Future<String> newFundingAddress({required LdkLiteInstance ldkLiteInstance, dynamic hint}) {
    var arg0 = _platform.api2wire_LdkLiteInstance(ldkLiteInstance);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_new_funding_address(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kNewFundingAddressConstMeta,
      argValues: [ldkLiteInstance],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kNewFundingAddressConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "new_funding_address",
        argNames: ["ldkLiteInstance"],
      );

  Future<void> sync({required LdkLiteInstance ldkLiteInstance, dynamic hint}) {
    var arg0 = _platform.api2wire_LdkLiteInstance(ldkLiteInstance);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_sync(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kSyncConstMeta,
      argValues: [ldkLiteInstance],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSyncConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "sync",
        argNames: ["ldkLiteInstance"],
      );

  Future<NodeInfo> getNodeInfo({required LdkLiteInstance ldkLiteInstance, dynamic hint}) {
    var arg0 = _platform.api2wire_LdkLiteInstance(ldkLiteInstance);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_get_node_info(port_, arg0),
      parseSuccessData: _wire2api_node_info,
      constMeta: kGetNodeInfoConstMeta,
      argValues: [ldkLiteInstance],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetNodeInfoConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "get_node_info",
        argNames: ["ldkLiteInstance"],
      );

  Future<String> connectOpenChannel(
      {required LdkLiteInstance ldkLiteInstance,
      required String nodePubkeyAndAddress,
      required int channelAmountSats,
      required bool announceChannel,
      dynamic hint}) {
    var arg0 = _platform.api2wire_LdkLiteInstance(ldkLiteInstance);
    var arg1 = _platform.api2wire_String(nodePubkeyAndAddress);
    var arg2 = _platform.api2wire_u64(channelAmountSats);
    var arg3 = announceChannel;
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_connect_open_channel(port_, arg0, arg1, arg2, arg3),
      parseSuccessData: _wire2api_String,
      constMeta: kConnectOpenChannelConstMeta,
      argValues: [ldkLiteInstance, nodePubkeyAndAddress, channelAmountSats, announceChannel],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectOpenChannelConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "connect_open_channel",
        argNames: ["ldkLiteInstance", "nodePubkeyAndAddress", "channelAmountSats", "announceChannel"],
      );

  DropFnType get dropOpaqueLdkLiteInstance => _platform.inner.drop_opaque_LdkLiteInstance;
  ShareFnType get shareOpaqueLdkLiteInstance => _platform.inner.share_opaque_LdkLiteInstance;
  OpaqueTypeFinalizer get LdkLiteInstanceFinalizer => _platform.LdkLiteInstanceFinalizer;

// Section: wire2api

  LdkLiteInstance _wire2api_LdkLiteInstance(dynamic raw) {
    return LdkLiteInstance.fromRaw(raw[0], raw[1], this);
  }

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  NodeInfo _wire2api_node_info(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 5) throw Exception('unexpected arr length: expect 5 but see ${arr.length}');
    return NodeInfo(
      nodePubKey: _wire2api_String(arr[0]),
      numChannels: _wire2api_usize(arr[1]),
      numUsableChannels: _wire2api_usize(arr[2]),
      localBalanceMsat: _wire2api_u64(arr[3]),
      numPeers: _wire2api_usize(arr[4]),
    );
  }

  int _wire2api_u64(dynamic raw) {
    return castInt(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }

  int _wire2api_usize(dynamic raw) {
    return castInt(raw);
  }
}

// Section: api2wire

@protected
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_network(Network raw) {
  return api2wire_i32(raw.index);
}

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer

class NativePlatform extends FlutterRustBridgeBase<NativeWire> {
  NativePlatform(ffi.DynamicLibrary dylib) : super(NativeWire(dylib));
// Section: api2wire

  @protected
  wire_LdkLiteInstance api2wire_LdkLiteInstance(LdkLiteInstance raw) {
    final ptr = inner.new_LdkLiteInstance();
    _api_fill_to_wire_LdkLiteInstance(raw, ptr);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_Config> api2wire_box_autoadd_config(Config raw) {
    final ptr = inner.new_box_autoadd_config_0();
    _api_fill_to_wire_config(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  int api2wire_u64(int raw) {
    return raw;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

  late final OpaqueTypeFinalizer _LdkLiteInstanceFinalizer = OpaqueTypeFinalizer(inner._drop_opaque_LdkLiteInstancePtr);
  OpaqueTypeFinalizer get LdkLiteInstanceFinalizer => _LdkLiteInstanceFinalizer;
// Section: api_fill_to_wire

  void _api_fill_to_wire_LdkLiteInstance(LdkLiteInstance apiObj, wire_LdkLiteInstance wireObj) {
    wireObj.ptr = apiObj.share();
  }

  void _api_fill_to_wire_box_autoadd_config(Config apiObj, ffi.Pointer<wire_Config> wireObj) {
    _api_fill_to_wire_config(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_config(Config apiObj, wire_Config wireObj) {
    wireObj.storage_dir_path = api2wire_String(apiObj.storageDirPath);
    wireObj.esplora_server_url = api2wire_String(apiObj.esploraServerUrl);
    wireObj.network = api2wire_network(apiObj.network);
    wireObj.listening_address = api2wire_opt_String(apiObj.listeningAddress);
    wireObj.default_cltv_expiry_delta = api2wire_u32(apiObj.defaultCltvExpiryDelta);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class NativeWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeWire.fromLookup(ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup) : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>('store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr.asFunction<void Function(DartPostCObjectFnType)>();

  void wire_init_builder(
    int port_,
    ffi.Pointer<wire_Config> config,
  ) {
    return _wire_init_builder(
      port_,
      config,
    );
  }

  late final _wire_init_builderPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_Config>)>>('wire_init_builder');
  late final _wire_init_builder = _wire_init_builderPtr.asFunction<void Function(int, ffi.Pointer<wire_Config>)>();

  void wire_start_ldk_node(
    int port_,
    wire_LdkLiteInstance ldk_lite_instance,
  ) {
    return _wire_start_ldk_node(
      port_,
      ldk_lite_instance,
    );
  }

  late final _wire_start_ldk_nodePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_LdkLiteInstance)>>('wire_start_ldk_node');
  late final _wire_start_ldk_node = _wire_start_ldk_nodePtr.asFunction<void Function(int, wire_LdkLiteInstance)>();

  void wire_new_funding_address(
    int port_,
    wire_LdkLiteInstance ldk_lite_instance,
  ) {
    return _wire_new_funding_address(
      port_,
      ldk_lite_instance,
    );
  }

  late final _wire_new_funding_addressPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_LdkLiteInstance)>>('wire_new_funding_address');
  late final _wire_new_funding_address =
      _wire_new_funding_addressPtr.asFunction<void Function(int, wire_LdkLiteInstance)>();

  void wire_sync(
    int port_,
    wire_LdkLiteInstance ldk_lite_instance,
  ) {
    return _wire_sync(
      port_,
      ldk_lite_instance,
    );
  }

  late final _wire_syncPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_LdkLiteInstance)>>('wire_sync');
  late final _wire_sync = _wire_syncPtr.asFunction<void Function(int, wire_LdkLiteInstance)>();

  void wire_get_node_info(
    int port_,
    wire_LdkLiteInstance ldk_lite_instance,
  ) {
    return _wire_get_node_info(
      port_,
      ldk_lite_instance,
    );
  }

  late final _wire_get_node_infoPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, wire_LdkLiteInstance)>>('wire_get_node_info');
  late final _wire_get_node_info = _wire_get_node_infoPtr.asFunction<void Function(int, wire_LdkLiteInstance)>();

  void wire_connect_open_channel(
    int port_,
    wire_LdkLiteInstance ldk_lite_instance,
    ffi.Pointer<wire_uint_8_list> node_pubkey_and_address,
    int channel_amount_sats,
    bool announce_channel,
  ) {
    return _wire_connect_open_channel(
      port_,
      ldk_lite_instance,
      node_pubkey_and_address,
      channel_amount_sats,
      announce_channel,
    );
  }

  late final _wire_connect_open_channelPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, wire_LdkLiteInstance, ffi.Pointer<wire_uint_8_list>, ffi.Uint64,
              ffi.Bool)>>('wire_connect_open_channel');
  late final _wire_connect_open_channel = _wire_connect_open_channelPtr
      .asFunction<void Function(int, wire_LdkLiteInstance, ffi.Pointer<wire_uint_8_list>, int, bool)>();

  wire_LdkLiteInstance new_LdkLiteInstance() {
    return _new_LdkLiteInstance();
  }

  late final _new_LdkLiteInstancePtr =
      _lookup<ffi.NativeFunction<wire_LdkLiteInstance Function()>>('new_LdkLiteInstance');
  late final _new_LdkLiteInstance = _new_LdkLiteInstancePtr.asFunction<wire_LdkLiteInstance Function()>();

  ffi.Pointer<wire_Config> new_box_autoadd_config_0() {
    return _new_box_autoadd_config_0();
  }

  late final _new_box_autoadd_config_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_Config> Function()>>('new_box_autoadd_config_0');
  late final _new_box_autoadd_config_0 = _new_box_autoadd_config_0Ptr.asFunction<ffi.Pointer<wire_Config> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_uint_8_list> Function(ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr.asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void drop_opaque_LdkLiteInstance(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _drop_opaque_LdkLiteInstance(
      ptr,
    );
  }

  late final _drop_opaque_LdkLiteInstancePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>('drop_opaque_LdkLiteInstance');
  late final _drop_opaque_LdkLiteInstance =
      _drop_opaque_LdkLiteInstancePtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  ffi.Pointer<ffi.Void> share_opaque_LdkLiteInstance(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _share_opaque_LdkLiteInstance(
      ptr,
    );
  }

  late final _share_opaque_LdkLiteInstancePtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
          'share_opaque_LdkLiteInstance');
  late final _share_opaque_LdkLiteInstance =
      _share_opaque_LdkLiteInstancePtr.asFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>('free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct =
      _free_WireSyncReturnStructPtr.asFunction<void Function(WireSyncReturnStruct)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_Config extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> storage_dir_path;

  external ffi.Pointer<wire_uint_8_list> esplora_server_url;

  @ffi.Int32()
  external int network;

  external ffi.Pointer<wire_uint_8_list> listening_address;

  @ffi.Uint32()
  external int default_cltv_expiry_delta;
}

class wire_LdkLiteInstance extends ffi.Struct {
  external ffi.Pointer<ffi.Void> ptr;
}

typedef DartPostCObjectFnType = ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;

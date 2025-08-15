import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  // // ***************************  BLOC  ********************************************
  // locator.registerFactory<OtpTimerBloc>(() => OtpTimerBloc(locator()));
  // locator.registerFactory<LoginBloc>(
  //     () => LoginBloc(locator(), locator(), locator()));
  // locator.registerLazySingleton<AuthenticationBloc>(
  //     () => AuthenticationBloc(locator()));
  // locator.registerFactory<GetCustomerDetailsBloc>(
  //     () => GetCustomerDetailsBloc(locator(), locator()));

  // locator.registerLazySingleton<ProductSelectionBloc>(
  //     () => ProductSelectionBloc());
  // locator.registerFactory<ReviewScreenBloc>(() => ReviewScreenBloc());
  // locator.registerFactory<PlaceOrderBloc>(() => PlaceOrderBloc(locator()));
  // locator.registerFactory<GetApprovedOrderListBloc>(
  //     () => GetApprovedOrderListBloc(locator()));
  // locator.registerFactory<GetAllOrderListBloc>(
  //     () => GetAllOrderListBloc(locator()));
  // locator.registerFactory<SubOrderDetailsBloc>(
  //     () => SubOrderDetailsBloc(locator()));
  // locator.registerFactory<ApprovedOrderDetailsDataBloc>(
  //     () => ApprovedOrderDetailsDataBloc());
  // locator.registerFactory<AllOrderDetailsBloc>(
  //     () => AllOrderDetailsBloc(locator()));
  // locator.registerLazySingleton<SelectedTruckDataBloc>(
  //     () => SelectedTruckDataBloc());
  // locator.registerFactory<CustomerListBloc>(() => CustomerListBloc(locator()));
  // locator.registerFactory<RadioButtonBloc>(() => RadioButtonBloc());
  // locator.registerFactory<PercentageValueBloc>(() => PercentageValueBloc());

  // //order list screen
  // locator.registerFactory<FilterSelectedValueBloc>(
  //     () => FilterSelectedValueBloc());

  // //Pending for approval screen bloc
  // locator.registerFactory<GetPendingOrderApprovalDataBloc>(
  //     () => GetPendingOrderApprovalDataBloc(locator()));
  // locator.registerFactory<PendingApprovalSelectedProductBloc>(
  //     () => PendingApprovalSelectedProductBloc());
  // locator.registerFactory<SingleCustomerDetailsBloc>(
  //     () => SingleCustomerDetailsBloc(locator()));
  // locator.registerFactory<ReasonListDataFetchBloc>(
  //     () => ReasonListDataFetchBloc(locator()));
  // locator.registerFactory<ApproveOrRejectOrderBloc>(
  //     () => ApproveOrRejectOrderBloc(locator()));

  // //edit order
  // locator.registerFactory<EditOrderProductSelectionBloc>(
  //     () => EditOrderProductSelectionBloc());
  // locator.registerFactory<EditOrderCustomerDataBloc>(
  //     () => EditOrderCustomerDataBloc(locator()));
  // locator.registerFactory<EditOrderBloc>(() => EditOrderBloc(locator()));

  // //***************************  USECASE  *****************************************
  // locator
  //     .registerLazySingleton<SendOtpUsecase>(() => SendOtpUsecase(locator()));
  // locator.registerLazySingleton<SignInWithMobileNumberUsecase>(
  //     () => SignInWithMobileNumberUsecase(locator()));
  // locator.registerLazySingleton<GetCustomerDetailsUsecase>(
  //     () => GetCustomerDetailsUsecase(locator()));
  // locator.registerLazySingleton<PlaceOrderUseCase>(
  //     () => PlaceOrderUseCase(locator()));
  // locator.registerLazySingleton<GetApprovedOrderListUseCase>(
  //     () => GetApprovedOrderListUseCase(locator()));
  // locator.registerLazySingleton<GetAllOrderListUseCase>(
  //     () => GetAllOrderListUseCase(locator()));
  // locator.registerLazySingleton<CustomerListUseCase>(
  //     () => CustomerListUseCase(locator()));

  // //Pending for approval screen usecase
  // locator.registerLazySingleton<GetPendingForMyApprovalUseCase>(
  //     () => GetPendingForMyApprovalUseCase(locator()));
  // locator.registerLazySingleton<GetSingleCustomerDataUseCase>(
  //     () => GetSingleCustomerDataUseCase(locator()));
  // locator.registerLazySingleton<GetReasonListDataUseCase>(
  //     () => GetReasonListDataUseCase(locator()));
  // locator.registerLazySingleton<ApproveOrRejectOrderUseCase>(
  //     () => ApproveOrRejectOrderUseCase(locator()));

  // // ***************************  REPOSITORY  **************************************
  // locator.registerLazySingleton<AuthenticationRepository>(
  //     () => AuthenticationRepositoryImpl(locator()));
  // locator.registerLazySingleton<PlaceOrderRepository>(
  //     () => PlaceOrderRepositoryImpl(locator()));
  // locator.registerLazySingleton<OrderListRepository>(
  //     () => OrderListRepositoryImpl(locator()));
  // locator.registerLazySingleton<CustomerListRepository>(
  //     () => CustomerListRepositoryImpl(locator()));
  // locator.registerLazySingleton<PendingForMyApprovalRepository>(
  //     () => PendingForMyApprovalRepositoryImpl(locator()));

  // // ***************************  DATA_SOURCE **************************************
  // locator.registerLazySingleton<AuthenticationDataSource>(
  //     () => AuthenticationDataSourceImpl(locator()));
  // locator.registerLazySingleton<PlaceOrderDataSource>(
  //     () => PlaceOrderDataSourceImpl(locator()));
  // locator.registerLazySingleton<OrderListDataSource>(
  //     () => OrderListDataSourceImpl(locator()));
  // locator.registerLazySingleton<CustomerListDataSource>(
  //     () => CustomerListDataSourceImpl(locator()));
  // locator.registerLazySingleton<PendingForMyApprovalDataSource>(
  //     () => PendingForMyApprovalDataSourceImpl(locator()));

  // // ***************************  Other Class **************************************
  // locator.registerSingleton(const Ticker());
  // locator.registerFactory<DioClient>(() => DioClient());
  // locator.registerLazySingleton(() => SecurePreference());

  // // ***************************  Home Screen  **************************************
  // locator.registerFactory<HomeScreenBloc>(() => HomeScreenBloc());

  // // ***************************  Warehouse Screen  **************************************

  //  locator.registerLazySingleton<WarehouseDataSource>(
  //     () => WarehouseDataSourceImpl(locator()));
  //  locator.registerLazySingleton<WarehouseRepository>(
  //     () => WarehouseRepositoryImpl(locator()));
  //  locator.registerLazySingleton<WarehouseUseCase>(
  //     () => WarehouseUseCase(locator()));
  //  locator.registerFactory<WarehouseListBloc>(() => WarehouseListBloc(locator()));

  //  // ***************************  Warehouse Details Screen  **************************************

  //  locator.registerLazySingleton<WarehouseDetailsDataSource>(
  //     () => WarehouseDetailsDataSourceImpl(locator()));
  //  locator.registerLazySingleton<WarehouseDetailsRepository>(
  //     () => WarehouseDetailsRepoImplementation(locator()));
  //  locator.registerLazySingleton<WarehouseDetailsUseCase>(
  //     () => WarehouseDetailsUseCase(locator()));
  //  locator.registerFactory<WarehouseDetailsListBloc>(() => WarehouseDetailsListBloc(locator()));

  //  //Visibility
  //    locator.registerFactory<VisibilityBloc>(() => VisibilityBloc());

  //   //Visibility
  //    locator.registerFactory<TruckSelctionCardBloc>(() => TruckSelctionCardBloc());
}

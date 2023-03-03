import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/model/profile_ui_model.dart';
import 'package:weather_app/ui/component/days_forecast.dart';
import 'package:weather_app/ui/component/dialogs.dart';
import 'package:weather_app/ui/component/forecast_summary.dart';
import 'package:weather_app/ui/component/header.dart';
import 'package:weather_app/ui/component/toolbar.dart';
import 'package:weather_app/ui/page/home/home_cubit.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  final ProfileUiModel model;

  const HomePage({Key? key, required this.model}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<State> _keyLoader = GlobalKey<State>();

  @override
  void initState() {
    super.initState();
  }

  void loadData() {
    final city = widget.model.city;
    final query = city.replaceAll('KAB. ', '')
        .replaceAll('KOTA ', '');

    BlocProvider.of<HomeCubit>(context)
        .getForecast(query);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      builder: (_, state) {
        return Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                      image: const ExactAssetImage(
                          'assets/clouds-background.jpg'
                      ),
                      fit: BoxFit.fill
                  )
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: UiKitToolbar(
                name: widget.model.name,
                city: widget.model.city,
                temp: state.maybeMap(
                  hasDataForecast: (val) => val.data.summaries[0].temp,
                  orElse: () => '-'
                ),
                onRefresh: () {
                  loadData();
                },
              ),
              body: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: UiKitHeader(
                      model: state.mapOrNull(
                          hasDataForecast: (value) => value.data.summaries[0]
                      ),
                    ),
                  ),
                  UiKitForecastSummary(
                    data: state.mapOrNull(
                        hasDataForecast: (value) => value.data.summaries
                    ) ?? [],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: UiKitDaysForecast(
                        data: state.mapOrNull(
                            hasDataForecast: (value) => value.data.daysForecast
                        ) ?? []
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
      listener: (_, state) {
        state.maybeMap(
          loading: (value) {
            if (value.isShown) {
              Dialogs.showLoadingDialog(context, _keyLoader);
            } else {
              final context = _keyLoader.currentContext;
              if (context != null) {
                Navigator.of(context, rootNavigator: true).pop();
              }
            }
          },
          error: (val) {
            Fluttertoast.showToast(msg: val.message);
            context.navigateBack();
          },
          orElse: () {}
        );
      }
    );
  }
}

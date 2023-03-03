import 'package:auto_route/auto_route.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/model/profile_ui_model.dart';
import 'package:weather_app/domain/model/region_ui_model.dart';
import 'package:weather_app/ui/component/button.dart';
import 'package:weather_app/ui/component/dropdown.dart';
import 'package:weather_app/ui/component/text.dart';
import 'package:weather_app/ui/component/textfield.dart';
import 'package:weather_app/ui/page/boarding/boarding_cubit.dart';
import 'package:weather_app/ui/router/router.gr.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({Key? key}) : super(key: key);

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {

  final _nameController = TextEditingController();
  final _cityController = SingleValueDropDownController();

  @override
  void initState() {
    BlocProvider.of<BoardingCubit>(context)
      .getRegions();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var listRegion = [];
    var listCity = [];

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
          body: ListView(
            children: [
              const SizedBox(
                  height: 200,
                  child: Center(
                    child: UiKitText(
                        'Weather App',
                        type: UiKitTextType.header1,
                        color: Colors.white
                    ),
                  )
              ),
              BlocBuilder<BoardingCubit, BoardingState>(
                builder: (_, state) {
                  state.mapOrNull(
                    hasDataRegion: (value) => listRegion = value.data,
                    hasDataCity: (value) => listCity = value.data
                  );

                  return SizedBox(
                      height: 350,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                            padding: const EdgeInsets.all(30),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: ListView(
                              children: [
                                UiKitTextField(
                                  controller: _nameController,
                                  hint: 'Name',
                                  onChanged: (_) => _validate(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: UiKitDropDown(
                                    data: listRegion.map((e) =>
                                        DropDownValueModel(name: e.name, value: e)).toList(),
                                    hint: 'Select region',
                                    onChanged: (value) {
                                      _selectedRegion(value);
                                    }
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: UiKitDropDown(
                                    controller: _cityController,
                                    data: listCity.map((e) =>
                                        DropDownValueModel(name: e.name, value: e)).toList(),
                                    hint: 'Select city',
                                    onChanged: (_) => _validate()
                                  ),
                                ),
                                BlocSelector<BoardingCubit, BoardingState, bool>(
                                  selector: (state) {
                                    return state.maybeMap(
                                        validateForm: (value) => value.isEnabled,
                                        orElse: () => false
                                    );
                                  },
                                  builder: (_, isEnabled) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: SizedBox(
                                        height: 45,
                                        child: UiKitButton(
                                          text: 'Submit',
                                          onPressed: isEnabled ? () {
                                            _submit();
                                          } : null,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            )
                        ),
                      )
                  );
                }
              ),
            ],
          ),
        )
      ],
    );
  }

  _validate() {
    final name = _nameController.text;
    final city = _cityController.dropDownValue?.name;

    BlocProvider.of<BoardingCubit>(context)
      .validateForm(name, city);
  }

  void _selectedRegion(model) {
    if (model is DropDownValueModel) {
      final value = model.value;

      if (value is FieldUiModel) {
        BlocProvider.of<BoardingCubit>(context)
            .getCities(value.id);
      } else {
        _cityController.setDropDown(null);
        _clearCity();
      }
    } else {
      _cityController.setDropDown(null);
      _clearCity();
    }
  }

  void _clearCity() {
    BlocProvider.of<BoardingCubit>(context)
        .clearCity();
  }

  void _submit() {
    final profile = ProfileUiModel(
        _nameController.text, _cityController.dropDownValue?.name ?? ''
    );

    context.navigateTo(HomeRoute(model: profile));
  }
}

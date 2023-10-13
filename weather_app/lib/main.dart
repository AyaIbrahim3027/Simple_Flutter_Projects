import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: ((context, state) {
            return MaterialApp(
              theme: ThemeData(
                primarySwatch: getThemeColor(
                  BlocProvider.of<GetWeatherCubit>(context)
                      .weatherModel
                      ?.weatherCondition,
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: HomeView(),
            );
          }),
        ),
      ),
    );
  }
}

// class CustomMaterialApp extends StatelessWidget {
//   const CustomMaterialApp({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: getThemeColor(
//           BlocProvider.of<GetWeatherCubit>(context)
//               .weatherModel
//               ?.weatherCondition,
//         ),
//       ),
//       debugShowCheckedModeBanner: false,
//       home: HomeView(),
//     );
//   }
// }

MaterialColor getThemeColor(String? condtion) {
  if (condtion == null) {
    return Colors.blue;
  }
  switch (condtion) {
    case 'Sunny':
    case 'Clear':
      return Colors.orange;
    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
    return Colors.cyan;
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.blueGrey;
    case 'Patchy rain possible':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Moderate rain at times':
      return Colors.orange;
    case 'Moderate rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
    return Colors.cyan;
    case 'Light rain shower':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
    case 'Patchy snow possible':
    return Colors.purple;
    case 'Patchy light snow':
    case 'Light snow':
    case 'Patchy moderate snow':
    case 'Moderate snow':
       return Colors.indigo;
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Light snow showers':
      return Colors.blueGrey;
    case 'Moderate or heavy snow showers':
    case 'Patchy sleet possible':
    case 'Light sleet':
      return Colors.purple;
    case 'Moderate or heavy sleet':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
    case 'Patchy freezing drizzle possible':
       return Colors.indigo;
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
      return Colors.teal;
    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Ice pellets':
      return Colors.grey;
    default:
      return Colors.blue;
  }
}

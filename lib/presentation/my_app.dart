import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:second_task_data_usage/data/datasour%D1%81es/firebase/firebase_remote_data_sourse.dart';
import 'package:second_task_data_usage/data/repositories/drift_task_repository.dart';
import 'package:second_task_data_usage/data/repositories/firestore_task_repository.dart';
import 'package:second_task_data_usage/presentation/bloc/tasks_list_bloc.dart';
import 'package:second_task_data_usage/presentation/ui/screens/info/information_screen.dart';
import 'package:second_task_data_usage/presentation/ui/screens/tasks/tasks_list/tasks_list_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      builder: (_, __) {
        return BlocProvider<TasksListBloc>(
          create: (BuildContext _) => TasksListBloc(
            DriftTaskRepository(),
            // FirestoreTaskRepository(
            //   dataSource: FirebaseRemoteDataSource(),
            // ),
          )..add(
              const TasksListEvent.started(),
            ),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const TasksScreen(),
              '/infoScreen': (context) => const InformationScreen(),
            },
          ),
        );
      },
    );
  }
}

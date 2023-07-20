// import 'shopping_top_boxes_full_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../constants/app_colors.dart';
// import '../../../constants/app_text.dart';
// import '../../../cubit/search/search_cubit.dart';
// import '../../../cubit/search/search_state.dart';
// import '../../../widgets/global/global_input_widget.dart';

// class ShoppingBoxesWithInputWidget extends StatelessWidget {
//   const ShoppingBoxesWithInputWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     SearchCubit searchCubit = context.read<SearchCubit>();
//     return BlocBuilder<SearchCubit, SearchState>(
//       builder: (context, state) {
//         if (state is SearchInitial) {
//           return const ShoppingTopBoxsesFullWidget();
//         } else if (state is InputOpen) {
//           return Stack(
//             children: [
//               GlobalInputWidget(
//                 hintText: AppText.search,
//                 prefixIcon: const Icon(Icons.search),
//                 isPassword: false,
//               ),
//               Positioned(
//                 top: 6,
//                 right: 15,
//                 child: GestureDetector(
//                   onTap: () {
//                     searchCubit.closeInput();
//                   },
//                   child: Container(
//                     width: 25,
//                     height: 25,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       color: AppColors.appBarColor,
//                     ),
//                     child: const Center(
//                       child: Text("x"),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           );
//         }
//         return const SizedBox.shrink();
//       },
//     );
//   }
// }

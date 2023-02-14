//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ExpansionTileBox extends StatelessWidget {
//   String? titleName;
//   String? subTitleName;
//   String? teamNameOne;
//   String? teamImageOne;
//   int? itemCount;
//   int? index;
//   List<Event>? teamList;
//
//   ExpansionTileBox({
//     this.index,
//     this.teamNameOne,
//     this.subTitleName,
//     this.teamImageOne,
//     this.itemCount,
//     this.teamList = const [],
//     this.titleName,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Theme(
//       data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
//       child: Container(
//         padding: EdgeInsets.zero,
//         decoration: BoxDecoration(
//           color: AppColors.black[200],
//           borderRadius: BorderRadius.circular(
//             SizeUtils.horizontalBlockSize * 3,
//           ),
//         ),
//         child: Card(
//           elevation: 0,
//           color: AppColors.black[200],
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(
//               SizeUtils.horizontalBlockSize * 3,
//             ),
//           ),
//           child: ExpansionTile(
//             // tilePadding: EdgeInsets.zero,
//             expandedAlignment: Alignment.bottomRight,
//             childrenPadding: EdgeInsets.zero,
//             backgroundColor: AppColors.black[200],
//             iconColor: AppColors.black[300],
//             collapsedIconColor: AppColors.black[300],
//             textColor: AppColors.white,
//             title: Row(
//               children: [
//                 SizedBox(
//                   width: SizeUtils.horizontalBlockSize * 70,
//                   child:
//                       // Column(
//                       //   crossAxisAlignment: CrossAxisAlignment.start,
//                       //   children: [
//                       AppText(
//                     text: "$titleName",
//                     maxLines: 1,
//                     fontSize: SizeUtils.fSize_16(),
//                     fontWeight: FontWeight.w500,
//                   ),
//                   // AppText(
//                   //   text: "$subTitleName",
//                   //   maxLines: 1,
//                   //   fontSize: SizeUtils.fSize_14(),
//                   //   fontWeight: FontWeight.w500,
//                   // ),
//                   //   ],
//                   // ),
//                 ),
//               ],
//             ),
//             children: [
//               const Divider(
//                 color: AppColors.borderColor,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                   right: SizeUtils.horizontalBlockSize * 4,
//                   left: SizeUtils.horizontalBlockSize * 4,
//                   bottom: SizeUtils.horizontalBlockSize * 2,
//                   top: SizeUtils.horizontalBlockSize * 1,
//                 ),
//                 child: ListView.separated(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemCount: teamList?.length ?? 0,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         ScoresArgumentsMatchDetailModel model = ScoresArgumentsMatchDetailModel(
//                           titleName: titleName,
//                           time: "${teamList?[index].date}",
//                           scores1: "${teamList?[index].scores?["6"]?.home ?? ""}",
//                           scores2: "${teamList?[index].scores?["6"]?.away ?? ""}",
//                           teamNameOne: teamList?[index].homeTeam?.name ?? "",
//                           teamNameTwo: teamList?[index].awayTeam?.name ?? "",
//                           teamImageOne:
//                               "${StringsUtils.imageBaseUrl}${teamList?[index].homeTeam?.imageUrl ?? " "}${StringsUtils.extensionLogo}",
//                           teamImageTwo:
//                               "${StringsUtils.imageBaseUrl}${teamList?[index].awayTeam?.imageUrl ?? " "}${StringsUtils.extensionLogo}",
//                           matchId: teamList?[index].id ?? 0,
//                           homeTeamId: teamList?[index].homeTeam?.id,
//                           awayTeamId: teamList?[index].awayTeam?.id,
//                         );
//                         Get.toNamed(
//                           Routes.detailScreen,
//                           arguments: model,
//                         );
//                       },
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               CircleAvatar(
//                                 radius: 13.0,
//                                 backgroundImage: NetworkImage(
//                                     "${StringsUtils.imageBaseUrl}${teamList?[index].homeTeam?.imageUrl ?? " "}${StringsUtils.extensionLogo}"),
//                                 backgroundColor: Colors.transparent,
//                               ),
//                               SizedBox(
//                                 width: SizeUtils.horizontalBlockSize * 3,
//                               ),
//                               Expanded(
//                                 child: AppText(
//                                   text: teamList?[index].homeTeam?.name ?? "",
//                                   fontSize: SizeUtils.fSize_14(),
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               AppText(
//                                 text: "${teamList?[index].scores?['6']?.home ?? "-"}",
//                                 fontSize: SizeUtils.fSize_14(),
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: SizeUtils.horizontalBlockSize * 2,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               CircleAvatar(
//                                 radius: 13.0,
//                                 backgroundImage: NetworkImage(
//                                     "${StringsUtils.imageBaseUrl}${teamList?[index].awayTeam?.imageUrl ?? " "}${StringsUtils.extensionLogo}"),
//                                 backgroundColor: Colors.transparent,
//                               ),
//                               SizedBox(
//                                 width: SizeUtils.horizontalBlockSize * 3,
//                               ),
//                               Expanded(
//                                 child: AppText(
//                                   text: teamList?[index].awayTeam?.name ?? "",
//                                   fontSize: SizeUtils.fSize_14(),
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               AppText(
//                                 text: "${teamList?[index].scores?['6']?.away ?? "-"}",
//                                 fontSize: SizeUtils.fSize_14(),
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                   separatorBuilder: (BuildContext context, int index) {
//                     return const Divider(
//                       color: AppColors.borderColor,
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

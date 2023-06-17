
  // Widget _slider(List<SliderModel> list) {
  //   return Obx(
  //     () => controller.isSliderLoading.isTrue
  //         ? CustomLoading(isItForWidget: true)
  //         : Stack(
  //             alignment: Alignment.bottomCenter,
  //             children: [
  //               SizedBox(
  //                 height: AppResponsiveness.getBoxHeightPoint15(),
  //                 child: PageView.builder(
  //                   controller: controller.sliderPageController,
  //                   onPageChanged: (value) {
  //                     controller.sliderIndex(value);
  //                   },
  //                   itemCount: list.length,
  //                   itemBuilder: (context, index) {
  //                     SliderModel model = list[index];
  //                     return CustomNetworkImage(
  //                       imageUrl: model.image!,
  //                       fit: BoxFit.fill,
  //                       width: AppConstant.getSize().width,
  //                     );
  //                   },
  //                 ),
  //               ),
  //               Padding(
  //                 padding: EdgeInsets.only(bottom: 6),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: List.generate(
  //                     list.length,
  //                     (index) => AnimatedContainer(
  //                       duration: const Duration(milliseconds: 400),
  //                       height: 6.0,
  //                       width: controller.sliderIndex.value == index ? 14 : 6,
  //                       margin: const EdgeInsets.only(right: 3),
  //                       decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(5),
  //                         color: controller.sliderIndex.value == index
  //                             ? Colors.black
  //                             : Colors.grey,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //   );
  // }

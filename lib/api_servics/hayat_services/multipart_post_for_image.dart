
  // void addProduct() async {
  //   GlobalVariable.showLoader.value = true;
  //   num discount = prodDiscountController.text.isEmpty
  //       ? 0
  //       : num.parse(prodDiscountController.text);
  //   ProductModel newProduct = ProductModel(
  //       name: prodNameController.text.trim(),
  //       price: priceAfterCommission.value,
  //       stock: int.parse(prodStockController.text),
  //       categoryId: selectedCategoryID.value,
  //       subCategoryId: selectedSubCategoryID.value,
  //       description: prodDescriptionController.text,
  //       discount: discount);

  //   Map<String, String> body = {
  //     'name': newProduct.name.toString(),
  //     'price': newProduct.price.toString(),
  //     'stock': newProduct.stock.toString(),
  //     'categoryId': newProduct.categoryId.toString(),
  //     'subCategoryId': newProduct.subCategoryId.toString(),
  //     if (newProduct.discount != null &&
  //         newProduct.discount! >= 10 &&
  //         newProduct.discount! <= 90)
  //       'discount': newProduct.discount.toString(),
  //     'description': newProduct.description.toString(),
  //   };

  //   if (categoryFieldList != null) {
  //     for (int i = 0; i < categoryFieldList!.entries.length; i++) {
  //       body.addAll({
  //         'features[$i][id]': "${categoryFieldList!.entries.elementAt(i).key}",
  //         'features[$i][value]':
  //             "${categoryFieldList!.entries.elementAt(i).value}"
  //       });
  //     }
  //   } else {
  //     body.addAll({'features': '[]'});
  //   }

  //   List<http.MultipartFile> filesList = [];
  //   for (File image in productImages) {
  //     filesList.add(await http.MultipartFile.fromPath(
  //       'images',
  //       image.path,
  //       contentType: MediaType.parse('image/jpeg'),
  //     ));
  //   }

  //   await ApiBaseHelper()
  //       .postMethodForImage(
  //     url: 'vendor/products/add',
  //     files: filesList,
  //     fields: body,
  //     withAuthorization: true,
  //   )
  //       .then((value) async {
  //     GlobalVariable.showLoader.value = false;
  //     if (value['success'] == true) {
  //       MyProductsViewModel myProductsViewModel = Get.find();
  //       myProductsViewModel.loadInitialProducts();
  //       // await sellersController.fetchMyProducts();
  //       Get.back();
  //       AppConstant.displaySnackBar(langKey.success.tr, value['message']);
  //     } else {
  //       debugPrint('Error: ${value.toString()}');
  //       AppConstant.displaySnackBar(
  //         langKey.errorTitle.tr,
  //         "${value['message'] != null ? value['message'] : langKey.someThingWentWrong.tr}",
  //       );
  //     }
  //   }).catchError((e) {
  //     debugPrint('Error: ${e.toString()}');
  //     AppConstant.displaySnackBar(langKey.errorTitle, "${e.message}");
  //   });
  // }

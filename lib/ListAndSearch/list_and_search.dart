import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Api_Section/Bloc/product_list_bloc.dart';
import 'Api_Section/ModelClass/ListModelClass.dart';
import 'Api_Section/ModelClass/SearchModelClass.dart';


class ListAndSearchScreen extends StatefulWidget {
   ListAndSearchScreen({Key? key}) : super(key: key);

  @override
  State<ListAndSearchScreen> createState() => _ListAndSearchScreenState();
}

class _ListAndSearchScreenState extends State<ListAndSearchScreen> {

  late ListModelClass listModelClass ;
  late SearchModelClass searchModelClass ;

  final TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    BlocProvider.of<ProductListBloc>(context).add(FetchProductList());

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mWidth = MediaQuery.of(context).size.width;
    final mHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: BlocBuilder<ProductListBloc, ProductListState>(
  builder: (context, state) {
    if (state is ProductListLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state is ProductListLoaded) {
      listModelClass =
          BlocProvider.of<ProductListBloc>(context).listModelClass;
      return ListView(
        children: [
          SizedBox(height: mHeight * .01),

          SearchFieldWidget(mHeight: mHeight,
              hintText: "Search",
              onChanged: (quary){
                BlocProvider.of<ProductListBloc>(context).add(FetchSearchEvent(productName: quary, length: quary.length),
                );

              },
              controller: searchController),
          SizedBox(height: mHeight * .01),

          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listModelClass.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  // color: Color(0xffF2F2F2),
                  elevation: 0,
                  child: Container(
                    color: Colors.black,
                    height: mHeight * .1,
                    child: ListTile(
                      leading: Text(
                        listModelClass.data![index].productName.toString(), style: TextStyle(color: Colors.white),),
                    ),


                  ),
                );
              }),


        ],

      );
    }

    if (state is ProductListError) {
      return const Center(
        child: Text("something went wrong"),
      );
    } if(state is SearchLoaded){
      searchModelClass =
          BlocProvider.of<ProductListBloc>(context).searchModelClass;
      return ListView(
        children: [
          SizedBox(height: mHeight * .01),

          SearchFieldWidget(mHeight: mHeight,
              hintText: "Search",
              onChanged: (quary){
                BlocProvider.of<ProductListBloc>(context).add(FetchSearchEvent(productName: quary, length: quary.length),
                );

              },
              controller: searchController),
          SizedBox(height: mHeight * .01),

          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: searchModelClass.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  // color: Color(0xffF2F2F2),
                  elevation: 0,
                  child: Container(
                    color: Colors.black,
                    height: mHeight * .1,
                    child: ListTile(
                      leading: Text(
                     searchModelClass.data![index].productName != null?   searchModelClass.data![index].productName.toString():"product not found", style: TextStyle(color: Colors.white),),
                    ),


                  ),
                );
              }),


        ],

      );
    }
    return const Center(
      child: Text("loading...."),
    );
  },
),

    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  SearchFieldWidget({
    super.key,
    required this.mHeight, required this.hintText, required this.controller,this.onChanged}) ;
  final double mHeight;
  final String hintText;
  final TextEditingController controller;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;
    final mWidth = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.only( left: mWidth * .01, right: mWidth * .01,),
        padding: EdgeInsets.only(
            left: mWidth * .02,top: mHeight*.01,bottom: mHeight*.01),
        height: mHeight*.055,
        decoration:   BoxDecoration(
          color: const Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(10),),
        child: TextFormField(
          onChanged: onChanged,
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.only(left: 10.0,bottom: 10),
              border: InputBorder.none),));
  }
}

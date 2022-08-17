// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// class Testing extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('News')),
//       body: NewsList(
//         newsList: [
//           ListTile(
//             title: Text('newsssss'),
//           ),
//           ListTile(
//             title: Text('newsssss'),
//           ),
//           ListTile(
//             title: Text('newsssss'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class NewsList extends StatefulWidget {
//   final List newsList;
//
//   const NewsList({
//     Key? key,
//     required this.newsList,
//   }) : super(key: key);
//
//   @override
//   _NewsListState createState() => _NewsListState();
// }
//
// class _NewsListState extends State<NewsList> {
//   ScrollController _scrollController = ScrollController();
//   Timer? _timer;
//
//   double _itemExtent = 100.0;
//   Duration _scrollDuration = Duration(milliseconds: 300);
//   Curve _scrollCurve = Curves.easeInOut;
//
//   int _autoScrollIncrement = 1;
//   int _currentScrollIndex = 0;
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _timer = Timer.periodic(Duration(seconds: 2), (_) async {
//   //     _autoScrollIncrement = _currentScrollIndex == 0
//   //         ? 1
//   //         : _currentScrollIndex == widget.newsList.length - 1
//   //             ? -1
//   //             : _autoScrollIncrement;
//   //     _currentScrollIndex += _autoScrollIncrement;
//   //     _animateToIndex(_currentScrollIndex);
//   //     setState(() {});
//   //   });
//   // }
//   @override
//   void initState() {
//     super.initState();
//     _timer = Timer.periodic(Duration(seconds: 2), (Timer t) async {
//       await _scrollController.scrollToIndex(1,
//           preferPosition: AutoScrollPosition.begin);
//     });
//
//   void _animateToIndex(int index) {
//     _scrollController.animateTo(
//       index * _itemExtent,
//       duration: _scrollDuration,
//       curve: _scrollCurve,
//     );
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       controller: _scrollController,
//       itemExtent: _itemExtent,
//       children: widget.newsList
//           .map((news) => ListView(
//                 children: [],
//               ))
//           .toList(),
//     );
//   }
// }

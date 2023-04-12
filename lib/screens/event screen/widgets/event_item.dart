import '../event_detail_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../providers/event.dart';

class EventItem extends StatelessWidget {
  // final String id;
  // final String name;
  // final String imageUrl;
  // final String date;

  // EventItem(
  //     {required this.id,
  //     required this.name,
  //     required this.imageUrl,
  //     required this.date});

  void selectEvent(BuildContext context) {
    final event = Provider.of<Event>(context, listen: false);
    Navigator.of(context).pushNamed(
      EventDetailScreen.routeName,
      arguments: event.id,
    );
  }

  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    return InkWell(
      onTap: () => selectEvent(context),
      child: Card(
        color: Color.fromARGB(255, 74, 27, 110),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              event.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 5),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  event.date,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              event.name,
              style: GoogleFonts.libreBaskerville(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

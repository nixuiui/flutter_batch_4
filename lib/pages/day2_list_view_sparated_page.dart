import 'package:flutter/material.dart';

class Day2ListViewSparatedPage extends StatefulWidget {
  const Day2ListViewSparatedPage({super.key});

  @override
  State<Day2ListViewSparatedPage> createState() => _Day2ListViewSparatedPageState();
}

class _Day2ListViewSparatedPageState extends State<Day2ListViewSparatedPage> {

  final footballPlayers = [
    {
      "name": "Lionel Messi",
      "image": "https://akcdn.detik.net.id/community/media/visual/2024/10/09/lionel-messi_169.jpeg?w=600&q=90"
    },
    {
      "name": "C. Ronaldo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s"
    },
    {
      "name": "Mbappee",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnH4FSHHFlSdksSURq-QCvwiwgwfuihe6WQ&s"
    },
    {
      "name": "Neymar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT617RdXDw8ufyxOVILqQwCiU_BfhNp8ErH9w&s"
    },
    {
      "name": "Kaka",
      "image": "https://img.a.transfermarkt.technology/portrait/big/3366-1683638749.jpg?lm=1"
    },
    {
      "name": "Onana",
      "image": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/98/2024/11/25/2024-11-03T164813Z_516028322_UP1EKB31AOBHO_RTRMADP_3_SOCCER-ENGLAND-MUN-CHE-REPORTJPG-633396016.jpg"
    },
    {
      "name": "Lionel Messi",
      "image": "https://akcdn.detik.net.id/community/media/visual/2024/10/09/lionel-messi_169.jpeg?w=600&q=90"
    },
    {
      "name": "C. Ronaldo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s"
    },
    {
      "name": "Mbappee",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnH4FSHHFlSdksSURq-QCvwiwgwfuihe6WQ&s"
    },
    {
      "name": "Neymar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT617RdXDw8ufyxOVILqQwCiU_BfhNp8ErH9w&s"
    },
    {
      "name": "Kaka",
      "image": "https://img.a.transfermarkt.technology/portrait/big/3366-1683638749.jpg?lm=1"
    },
    {
      "name": "Onana",
      "image": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/98/2024/11/25/2024-11-03T164813Z_516028322_UP1EKB31AOBHO_RTRMADP_3_SOCCER-ENGLAND-MUN-CHE-REPORTJPG-633396016.jpg"
    },
    {
      "name": "Lionel Messi",
      "image": "https://akcdn.detik.net.id/community/media/visual/2024/10/09/lionel-messi_169.jpeg?w=600&q=90"
    },
    {
      "name": "C. Ronaldo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s"
    },
    {
      "name": "Mbappee",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnH4FSHHFlSdksSURq-QCvwiwgwfuihe6WQ&s"
    },
    {
      "name": "Neymar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT617RdXDw8ufyxOVILqQwCiU_BfhNp8ErH9w&s"
    },
    {
      "name": "Kaka",
      "image": "https://img.a.transfermarkt.technology/portrait/big/3366-1683638749.jpg?lm=1"
    },
    {
      "name": "Onana",
      "image": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/98/2024/11/25/2024-11-03T164813Z_516028322_UP1EKB31AOBHO_RTRMADP_3_SOCCER-ENGLAND-MUN-CHE-REPORTJPG-633396016.jpg"
    },
    {
      "name": "Lionel Messi",
      "image": "https://akcdn.detik.net.id/community/media/visual/2024/10/09/lionel-messi_169.jpeg?w=600&q=90"
    },
    {
      "name": "C. Ronaldo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s"
    },
    {
      "name": "Mbappee",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnH4FSHHFlSdksSURq-QCvwiwgwfuihe6WQ&s"
    },
    {
      "name": "Neymar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT617RdXDw8ufyxOVILqQwCiU_BfhNp8ErH9w&s"
    },
    {
      "name": "Kaka",
      "image": "https://img.a.transfermarkt.technology/portrait/big/3366-1683638749.jpg?lm=1"
    },
    {
      "name": "Onana",
      "image": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/98/2024/11/25/2024-11-03T164813Z_516028322_UP1EKB31AOBHO_RTRMADP_3_SOCCER-ENGLAND-MUN-CHE-REPORTJPG-633396016.jpg"
    },
    {
      "name": "Lionel Messi",
      "image": "https://akcdn.detik.net.id/community/media/visual/2024/10/09/lionel-messi_169.jpeg?w=600&q=90"
    },
    {
      "name": "C. Ronaldo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s"
    },
    {
      "name": "Mbappee",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnH4FSHHFlSdksSURq-QCvwiwgwfuihe6WQ&s"
    },
    {
      "name": "Neymar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT617RdXDw8ufyxOVILqQwCiU_BfhNp8ErH9w&s"
    },
    {
      "name": "Kaka",
      "image": "https://img.a.transfermarkt.technology/portrait/big/3366-1683638749.jpg?lm=1"
    },
    {
      "name": "Onana",
      "image": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/98/2024/11/25/2024-11-03T164813Z_516028322_UP1EKB31AOBHO_RTRMADP_3_SOCCER-ENGLAND-MUN-CHE-REPORTJPG-633396016.jpg"
    },
    {
      "name": "Lionel Messi",
      "image": "https://akcdn.detik.net.id/community/media/visual/2024/10/09/lionel-messi_169.jpeg?w=600&q=90"
    },
    {
      "name": "C. Ronaldo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s"
    },
    {
      "name": "Mbappee",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnH4FSHHFlSdksSURq-QCvwiwgwfuihe6WQ&s"
    },
    {
      "name": "Neymar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT617RdXDw8ufyxOVILqQwCiU_BfhNp8ErH9w&s"
    },
    {
      "name": "Kaka",
      "image": "https://img.a.transfermarkt.technology/portrait/big/3366-1683638749.jpg?lm=1"
    },
    {
      "name": "Onana",
      "image": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/98/2024/11/25/2024-11-03T164813Z_516028322_UP1EKB31AOBHO_RTRMADP_3_SOCCER-ENGLAND-MUN-CHE-REPORTJPG-633396016.jpg"
    },
    {
      "name": "Lionel Messi",
      "image": "https://akcdn.detik.net.id/community/media/visual/2024/10/09/lionel-messi_169.jpeg?w=600&q=90"
    },
    {
      "name": "C. Ronaldo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s"
    },
    {
      "name": "Mbappee",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnH4FSHHFlSdksSURq-QCvwiwgwfuihe6WQ&s"
    },
    {
      "name": "Neymar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT617RdXDw8ufyxOVILqQwCiU_BfhNp8ErH9w&s"
    },
    {
      "name": "Kaka",
      "image": "https://img.a.transfermarkt.technology/portrait/big/3366-1683638749.jpg?lm=1"
    },
    {
      "name": "Onana",
      "image": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/98/2024/11/25/2024-11-03T164813Z_516028322_UP1EKB31AOBHO_RTRMADP_3_SOCCER-ENGLAND-MUN-CHE-REPORTJPG-633396016.jpg"
    },
    {
      "name": "Lionel Messi",
      "image": "https://akcdn.detik.net.id/community/media/visual/2024/10/09/lionel-messi_169.jpeg?w=600&q=90"
    },
    {
      "name": "C. Ronaldo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s"
    },
    {
      "name": "Mbappee",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnH4FSHHFlSdksSURq-QCvwiwgwfuihe6WQ&s"
    },
    {
      "name": "Neymar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT617RdXDw8ufyxOVILqQwCiU_BfhNp8ErH9w&s"
    },
    {
      "name": "Kaka",
      "image": "https://img.a.transfermarkt.technology/portrait/big/3366-1683638749.jpg?lm=1"
    },
    {
      "name": "Onana",
      "image": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/98/2024/11/25/2024-11-03T164813Z_516028322_UP1EKB31AOBHO_RTRMADP_3_SOCCER-ENGLAND-MUN-CHE-REPORTJPG-633396016.jpg"
    },
    {
      "name": "Lionel Messi",
      "image": "https://akcdn.detik.net.id/community/media/visual/2024/10/09/lionel-messi_169.jpeg?w=600&q=90"
    },
    {
      "name": "C. Ronaldo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s"
    },
    {
      "name": "Mbappee",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnH4FSHHFlSdksSURq-QCvwiwgwfuihe6WQ&s"
    },
    {
      "name": "Neymar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT617RdXDw8ufyxOVILqQwCiU_BfhNp8ErH9w&s"
    },
    {
      "name": "Kaka",
      "image": "https://img.a.transfermarkt.technology/portrait/big/3366-1683638749.jpg?lm=1"
    },
    {
      "name": "Onana",
      "image": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/98/2024/11/25/2024-11-03T164813Z_516028322_UP1EKB31AOBHO_RTRMADP_3_SOCCER-ENGLAND-MUN-CHE-REPORTJPG-633396016.jpg"
    },
    {
      "name": "Lionel Messi",
      "image": "https://akcdn.detik.net.id/community/media/visual/2024/10/09/lionel-messi_169.jpeg?w=600&q=90"
    },
    {
      "name": "C. Ronaldo",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCHZoNznLD41tJDhMbrVzsyoi4N36obaScTA&s"
    },
    {
      "name": "Mbappee",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTnH4FSHHFlSdksSURq-QCvwiwgwfuihe6WQ&s"
    },
    {
      "name": "Neymar",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT617RdXDw8ufyxOVILqQwCiU_BfhNp8ErH9w&s"
    },
    {
      "name": "Kaka",
      "image": "https://img.a.transfermarkt.technology/portrait/big/3366-1683638749.jpg?lm=1"
    },
    {
      "name": "Onana",
      "image": "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/98/2024/11/25/2024-11-03T164813Z_516028322_UP1EKB31AOBHO_RTRMADP_3_SOCCER-ENGLAND-MUN-CHE-REPORTJPG-633396016.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.separated()"),
      ),
      body: ListView.separated(
        itemCount: footballPlayers.length,
        separatorBuilder: (context, index) => Divider(height: 1),
        itemBuilder: (context, index) {
          final name = footballPlayers[index]['name'] ?? '';
          return ListTile(
            leading: CircleAvatar(
              foregroundImage: NetworkImage(footballPlayers[index]['image'] ?? ''),
            ),
            title: Text("$index. $name"),
          );
        }
      ),
    );
  }
}
//  body: Column(
//           children: [
//             CheckboxListTile(
//               title: const Text(
//                 "Saya Menyetujui semua Persyaratan yang Berlaku",
//               ),
//               activeColor: Colors.blueGrey,
//               checkColor: Colors.white,
//               side: BorderSide(),
//               shape: CircleBorder(),
//               value: isChecked,
//               onChanged: (value) {
//                 setState(() {
//                   isChecked = value ?? false;
//                 });
//               },
//             ),
//             SizedBox(height: 8),
//             Text(
//               isChecked
//                   ? 'Lanjutkan Pendaftaran di Perbolehkan'
//                   : 'Anda belum bisa Melanjutkan',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: isChecked ? Colors.green : Colors.red,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Row(
//               children: [
//                 Switch(
//                   value: isSwitchOn,
//                   onChanged: (value) {
//                     setState(() {
//                       isSwitchOn = value;
//                     });
//                   },
//                 ),
//                 Text(
//                   isSwitchOn ? "Mode Gelap" : "Mode Terang",
//                   style: AppStyle.fontBold(fontSize: isSwitchOn ? 25 : 18),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             DropdownButton<String>(
//               value: isSelected,
//               hint: Text("Pilih Kategori Produk"),
//               items:
//                   ["Elektronik", "Pakaian", "Makanan", "Lainnya"].map((
//                     String val,
//                   ) {
//                     return DropdownMenuItem(value: val, child: Text(val));
//                   }).toList(),
//               onChanged: (val) {
//                 setState(() {
//                   isSelected = val;
//                 }
//                 );
//               },
//             ),
//           ],
//         ),

import 'package:crafty_bay/presentation/state_holders/invoice_controller.dart';
import 'package:crafty_bay/presentation/ui/screens/webVwe_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheekOutScreen extends StatefulWidget {
  const CheekOutScreen({super.key});

  @override
  State<CheekOutScreen> createState() => _CheekOutScreenState();
}

class _CheekOutScreenState extends State<CheekOutScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get.find<InvoiceController>().getinvoice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cheeck Out"),
      ),
      body: GetBuilder<InvoiceController>(builder: (invoiceControl) {
        if (invoiceControl.inProgress) {
          return const Center(child: CircularProgressIndicator());
        }
        final invoiceWraper = invoiceControl.listofPaymentMethod.data!.first;
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Payable: ${invoiceWraper.payable}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Vat:  ${invoiceWraper.vat}",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text("Total:  ${invoiceWraper.total}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(
                  height: 20,
                ),
                ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Get.to(WebvweScreen(
                          url: invoiceWraper
                              .paymentMethod![index].redirectGatewayURL!,
                        ));
                      },
                      trailing: const Icon(Icons.arrow_forward_rounded),
                      leading: Image.network(
                          invoiceWraper.paymentMethod![index].logo ?? ''),
                      title:
                          Text(invoiceWraper.paymentMethod![index].name ?? ''),
                    );
                  },
                  itemCount: invoiceWraper.paymentMethod?.length ?? 0,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

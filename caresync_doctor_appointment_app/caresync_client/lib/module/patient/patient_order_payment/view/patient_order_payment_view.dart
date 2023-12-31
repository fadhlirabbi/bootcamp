import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import '../bloc/patient_order_payment_bloc.dart';
import '../event/patient_order_payment_event.dart';
import '../state/patient_order_payment_state.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PatientOrderPaymentView extends StatefulWidget {
  const PatientOrderPaymentView({Key? key}) : super(key: key);

  @override
  State<PatientOrderPaymentView> createState() =>
      _PatientOrderPaymentViewState();
}

class _PatientOrderPaymentViewState extends State<PatientOrderPaymentView> {
  PatientOrderPaymentBloc bloc = PatientOrderPaymentBloc();

  @override
  void initState() {
    bloc.initState();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<PatientOrderPaymentBloc, PatientOrderPaymentState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientOrderPaymentBloc, PatientOrderPaymentState>(
          builder: (context, state) {
            final bloc = context.read<PatientOrderPaymentBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientOrderPaymentBloc bloc,
    PatientOrderPaymentState state,
  ) {
    return Scaffold(
      body: state.paymentUrl == null
          ? Container()
          : InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse(state.paymentUrl!),
              ),
              // http payment link success
              // redirect ke dashboard
              // snackbar (Payment berhasil)
            ),
      // bottomNavigationBar: Container(
      //   color: Colors.white,
      //   padding: EdgeInsets.all(12.0),
      //   child: Container(
      //     width: MediaQuery.of(context).size.width,
      //     height: 42,
      //     child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: warningColor,
      //       ),
      //       onPressed: () {},
      //       child: const Text("Checkout"),
      //     ),
      //   ),
      // ),
    );
  }
}

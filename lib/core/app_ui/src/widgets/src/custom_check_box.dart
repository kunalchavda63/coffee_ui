import 'package:coffe_ui/core/app_ui/app_ui.dart';
import 'package:coffe_ui/core/utilities/src/extensions/logger/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckBox extends StatelessWidget {
  final bool val;
  final Border? border;
  final Color? color;
  final double? boxH;
  final double? boxW;
  final BorderRadius? borderRadius;
  final Color? iconColor;
  final double? iconSize;

  const CustomCheckBox({
    super.key,
    this.val = false,
    this.border,
    this.color,
    this.boxH,
    this.boxW,
    this.borderRadius,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CheckboxCubit>(
      create: (_) => CheckboxCubit(initialVal: val),
      child: BlocBuilder<CheckboxCubit, bool>(
        builder: (context, isChecked) {
          return CustomWidgets.customContainer(
            onTap: () {
              context.read<CheckboxCubit>().toggle();
              logger.i("Toggle Check : ${!isChecked}");
            },
            borderRadius: borderRadius ?? BorderRadius.circular(4),
            alignment: Alignment.center,
            h: boxH ?? 24,
            w: boxW ?? 24,
            color: color ?? AppColors.hex6469,
            border: border ?? Border.all(color: Colors.grey),
            child: isChecked
                ? Icon(
              Icons.check,
              color: iconColor ?? Colors.white,
              size: iconSize ?? 16,
            )
                : const SizedBox(),
          );
        },
      ),
    );
  }
}


class CheckboxCubit extends Cubit<bool>{
  CheckboxCubit({bool initialVal = false}): super(initialVal);
  void toggle() => emit(!state);
}

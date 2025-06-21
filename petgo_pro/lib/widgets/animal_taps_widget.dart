
import 'package:flutter/material.dart';
import 'package:petgo_clone/theme/app_theme.dart';

// هذا الكود مسؤوول عن تصنيف الحيوانات في صفحة المتجر 
// يتم استدعاءه و جلب انواع الحيوانات من السابابيس

class AnimalTabWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const AnimalTabWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 36,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left : 5), 
        decoration: BoxDecoration(
          color: isSelected
                ? AppTheme.primaryColor
                : AppTheme.whiteColor, 
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),   
                  topRight: Radius.circular(6),   
                  bottomLeft: Radius.circular(0),  
                  bottomRight: Radius.circular(0), 
    ),        
      border: Border.all(
            color: AppTheme.borderColor, 
          ),
        ),
        child: Text(
          title,
          style: AppTheme.font13Regular.copyWith(
            color: isSelected
               ? AppTheme.whiteColor 
                : AppTheme.primaryColor, 
          ),
        ),
      ),
    );
  }
}

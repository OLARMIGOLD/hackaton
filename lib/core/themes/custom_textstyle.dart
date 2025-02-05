import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextstyle {
  static TextStyle get title {
    return GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle get inter {
    return GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w900,
    );
  }

  static TextStyle get medium {
    return GoogleFonts.leagueSpartan(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle get bold {
    return GoogleFonts.leagueSpartan(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle get semibold {
    return GoogleFonts.leagueSpartan(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle get light {
    return GoogleFonts.leagueSpartan(
      fontSize: 14,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle get caption {
    return TextStyle(
      fontFamily: "Circular std",
      fontSize: 12,
      fontWeight: FontWeight.normal,
    );
  }
}

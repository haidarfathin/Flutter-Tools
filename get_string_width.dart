 Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style), maxLines: 1, textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

// atau kalau cuman mau ngecek aja di debugConsole

  void _textSize(String text) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    //log nya log developer, atau kalau bingung pake log() nya diganti print() aje
    log("width: ${textPainter.width}\nheight: ${textPainter.height}");
  }

//contoh penerapan
Container(
  color: Colors.amber,
  padding: const EdgeInsets.all(20),
  child: Text(
      "Text: Hello World\n${_textSize('Hello World')}",
      style: const TextStyle(color: Colors.black),
      textAlign: TextAlign.center,
    ),
),

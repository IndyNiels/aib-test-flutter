String capitalizeFirstLetter(String? text) {
  if (text?.isEmpty ?? true) {
    return text ?? '';
  }
  return text![0].toUpperCase() + text.substring(1);
}
// クリックで画像を保存
void mouseClicked() {
  saveFrame("frame-####.jpg");
}

// Rキーでリセット
void keyPressed() {
  if (key == 'R') {
    background(255);
  }
}

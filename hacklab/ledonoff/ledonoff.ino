void setup() {

  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);

  Serial.begin(9600);
}

void loop() {

  if (Serial.available()) {

    char val = Serial.read();

    if (val == 'g') {
      digitalWrite(10, HIGH);
    }

    if (val == 'r') {
      digitalWrite(11, HIGH);
    }

    if (val == 'b') {
      digitalWrite(12, HIGH);
    }

    if (val == 'f') {
      digitalWrite(10, LOW);
      digitalWrite(11, LOW);
      digitalWrite(12, LOW);


    }
  }
}



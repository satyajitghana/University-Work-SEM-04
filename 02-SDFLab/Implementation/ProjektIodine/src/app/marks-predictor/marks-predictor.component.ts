import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup, Validators, FormArray } from '@angular/forms';
import { ModalDirective } from 'angular-bootstrap-md';
import * as tf from '@tensorflow/tfjs';
import { elementStart } from '@angular/core/src/render3';

@Component({
  selector: 'app-marks-predictor',
  templateUrl: './marks-predictor.component.html',
  styleUrls: ['./marks-predictor.component.scss']
})
export class MarksPredictorComponent implements OnInit {

  @ViewChild('frame') frame: ModalDirective;

  marksForm: FormGroup;

  linearModel: tf.Sequential;
  tfinterface: any;
  prediction: any;

  running = false;

  elements: any[];

  headElements = ['Sl.No', 'Subject Name', 'Predicted SEE Marks'];

  totalPercentage: any;

  resultsText = '';

  constructor(private fb: FormBuilder) { }

  ngOnInit() {
    this.marksForm = this.fb.group({
      marks: this.fb.array([this.createSubject()])
    });
    this.train();
  }

  async train(): Promise<any> {
    this.linearModel = tf.sequential();

    this.linearModel.add(tf.layers.dense({ units: 1, inputShape: [1] }));
    this.linearModel.compile({ loss: 'meanSquaredError', optimizer: 'sgd' });
  }

  predict(val: string) {
    const output = this.linearModel.predict(tf.tensor2d([parseInt(val, 10)], [1, 1])) as any;
    this.prediction = Array.from(output.dataSync())[0];
  }

  createSubject(): FormGroup {
    return this.fb.group({
      subject: ['Subject01', [Validators.required]],
      tt1: ['', [Validators.required]],
      tt2: ['', [Validators.required]],
      tt3: ['', [Validators.required]],
      a1: ['', [Validators.required]],
      a2: ['', [Validators.required]],
    });
  }

  get _marksForm() {
    return this.marksForm.get('marks') as FormArray;
  }

  addMarksForm() {
    this._marksForm.push(this.createSubject());
  }

  deleteMarksForm(index: number) {
    this._marksForm.removeAt(index);
  }

  async predictMarks() {
    this.running = true;
    this.elements = [];
    const marksArr = [];
    const predictedMarks = [];
    this.totalPercentage = 0;
    this.resultsText = '';
    for (const subject of this.marksForm.value.marks) {
      console.log(subject);
      const tts = [parseInt(subject.tt1, 10), parseInt(subject.tt2, 10), parseInt(subject.tt3, 10)];
      tts.sort();
      tts.reverse();

      const submarks = [tts[0] * 100 / 25, tts[1] * 100 / 25, parseInt(subject.a1, 10) * 100 / 25, parseInt(subject.a2, 10) * 100 / 25];
      marksArr.push(submarks);

      const xs = tf.tensor2d([1, 2, 3, 4], [4, 1]);
      const ys = tf.tensor2d(submarks, [4, 1]);

      await this.linearModel.fit(xs, ys);

      this.tfinterface = await this.linearModel.fit(xs, ys, { epochs: 2048 });

      const output = this.linearModel.predict(tf.tensor2d([5], [1, 1])) as any;
      this.prediction = Array.from(output.dataSync())[0];

      predictedMarks.push(Array.from(output.dataSync())[0]);
      this.elements.push({ subject: subject.subject, predicted: this.prediction });
    }

    for (const e of this.elements) {
      this.totalPercentage += e.predicted;
    }

    this.totalPercentage /= this.elements.length;

    const greater90 = ['Bhai Party \n🎉👏', 'Kya baat hai aapke toh maze hee maze 😏😏😏'];
    const greater80 = ['Waaaaaaah \n🎊✨', 'Sahi hai tera toh, maze kar 😂😂'];
    const greater50 = ['Padhna Shuru Karde \n😐😐😐', 'PUBG Khelna band kar, padhle jaake lo** 😒😒😒'];
    const less40 = ['Tum rehne do, tumse na ho payega 💩', 'kahin chullu bhar paani mil jaaye toh wahan jaake dub marna 💀💀'];
    if (this.totalPercentage > 90) {
      this.resultsText = this.randomItem(greater90);
      // 'Bhai Party \n🎉👏';
    } else if (this.totalPercentage > 80) {
      this.resultsText = this.randomItem(greater80);
      // 'Waaaaaaah \n🎊✨';
    } else if (this.totalPercentage > 70) {
      this.resultsText = 'Nice \n😊';
    } else if (this.totalPercentage > 50) {
      this.resultsText = this.randomItem(greater50);
      // 'Padhna Shuru Karde \n😐😐😐';
    } else if (this.totalPercentage > 40) {
      this.resultsText = 'Well umm i dont\'t know what to say 😂😂😂';
    } else {
      this.resultsText = this.randomItem(less40);
      // 'Tum rehne do, tumse na ho payega 💩';
    }

    console.log(predictedMarks);
    this.frame.show();
    this.running = false;
  }

  randomItem(items) {
    return items[Math.floor(Math.random() * items.length)];
  }

}

import Experience from "../Experience";
import * as THREE from "three";
import Environment from "./Environment";
import Floor from "./Floor";
import Fox from "./Fox";

export default class World {
  constructor() {
    this.experience = new Experience();
    this.scene = this.experience.scene;
    this.resources = this.experience.resources;

    // Wait for resources
    this.resources.on("ready", () => {
      this.floor = new Floor();
      this.fox = new Fox();
      this.enviroment = new Environment();
    });

    // Test mesh
    const testMesh = new THREE.Mesh(
      new THREE.BoxGeometry(1, 1, 1),
      new THREE.MeshStandardMaterial()
    );
    this.scene.add(testMesh);
  }

  update() {
    if (this.fox) {
      this.fox.update();
    }
  }
}

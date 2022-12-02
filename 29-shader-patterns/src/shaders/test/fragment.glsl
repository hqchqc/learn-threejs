varying vec2 vUv;

void main()
{
    // 1. 模式一
    // gl_FragColor = vec4(vUv, 1.0, 1.0);

    // 2. 模式二
    // gl_FragColor = vec4(vUv,0.0,1.0);

    // 3. 模式三
    // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0);

    // 4. 模式三 (2)
    // float strength = vUv.x;
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // 5. 模式四
    // float strength = vUv.y;
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // 6. 模式五
    // float strength = 1.0 - vUv.y;
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // 7. 模式六
    // float strength = vUv.y * 10.0;
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // 8. 模式七
    // float strength = mod(vUv.y * 10.0, 1.0);
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // 9. 模式八
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.5, strength);

    // gl_FragColor = vec4(vec3(strength), 1.0);

    // 10. 模式九
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.8, strength);

    // gl_FragColor = vec4(vec3(strength), 1.0);

    // 11. 模式十
    float strength = mod(vUv.x * 10.0, 1.0);
    strength = step(0.8, strength);

    gl_FragColor = vec4(vec3(strength), 1.0);
}
# Práctica Fundamentos IOS

## Enunciado

El objetivo de esta práctica es implementar una aplicación móvil iOS que consuma la API Rest
Dragon Ball presentada en clase.

## Requisitos Obligatorios

- La aplicación deberá estar desarrollada siguiendo la arquitectura MVC. Para el diseño de
interfaces se utilizarán solo archivos .xibs (No storyboards).
- Similar a la desarrollada en clase, la aplicación deberá contener las siguientes pantallas:
• Pantalla de Login (endpoint: /api/auth/login)
• Listado de heroes (a elegir mostrarlos como tabla o colección) (endpoint: /api/heros/all)
• Pantalla de detalle del héroe con botón de acceso a las transformaciones
• Lista de transformaciones del héroe (a elegir mostrarlos como tabla o colección)
(endpoint: /api/heros/tranformations)
- El desarrollo debe incluir UnitTests de los modelos.

## Requisitos Opcionales


- Añadirle lógica al botón de transformaciones para mostrarlo / ocultarlo en caso de que el héroe
no tenga transformaciones.
Spoiler: se deberá realizar la llamada a transformations en la pantalla de detalla del héroe, para saber si tiene o no transformaciones.
- Mostrar el detalle de las transformaciones.
Spoiler: se puede reutilizar alguna pantalla creada anteriormente.

## Ejemplos de Pantallas


![Pantallas Login, Table View, Colection View][external-source]

[external-source]: https://lh3.googleusercontent.com/EzNN4M6nuiQl2E2BIxH-wv1jNKOZrJ02AzgPMRUWQfVKaQTef97IN40FrJnPbrQLAMNWVLchdZ1Age4EiwxJ1Hk6Sy4mMPUbGegVbquDEF9dd2Xcw_6c9YTWZsvmTwqot9136ACxgHf0pFtB6lOvcEnGiqKBcAeqhRn5tR6GsOAD4uSZPHLDWYBMotkrSVE3Sm68lhYU00mtwRR2ls-VOUebMwGzWDxVTPT1MAwJSPge5RzgDGpjQi33U0b8rF3MZciwIyWvHV-bzEyNwPh9ibRYp3kBef_zUTqTiZrwO-TaxKw5xXKpn-IXKOhs9Bg8q7t1HwYmbiVCoGHi9TRj6f3MRNqsdrG0pq0UkYnmD6HUYrW724StS4v36pn-xCsspl46Wui4kLQkQW3dyrfjXg3x9a5wGiffAzZXV7BuhQuWfyWmTflQlL2RpcGvM8K0XMMNc-GYE6_vJ6hFVkCTCqS7sVZBDc4uNVbjfX8KHGeFrEgexB62dV4v1CNQUA3t-YtGNLm4MDiIU7cq_Bdg4P9CcPFAlD21CtJx6n5hp4WnSZjzEwYE3d-pfyiwjq0U_OP7z8SHiMjZ-ZjaRHbbfaGv7-wXfC6YP7bm9P7QRoRHaMPn62k4vmukdtNXCBoGDRoViCpS54mybXpqjhxAaTStA7P7Q0r5JDEwfp8EO1XXwF6I-19tCL9bNuR7sqExRqw24Cw6gm_uZ_EcIk56mmOR65vhlA7QotAb6YLbUSb3HGMQAhyHdDkeed6bqi2Ik7gL29jIuJzCSwLaCLxx6t8S6qcjhsoThuUdU73iqI2NcxocPZrcy0lHLo8yoFiH2KUzoGwUR7D2_KsK2MkVTQtoRx06fz5J7Ll_LM62_KVYEDR6dw74xzLPewVy76ypdDCcr0Ia01y1Efal2IwIsD-fF5w_q3RvYua1zupo_8Wv_PA=w1482-h812-no?authuser=0 'Login, tabla de heroes y coleccion de Heroes'

![Pantallas Transformaciones, Listado de Transformaciones][external-source]

[external-source]: https://photos.google.com/album/AF1QipPAQujeRGj9oAFenDTKtCJi94grsu1Tl_iKN4R3/photo/AF1QipOod4XzBAlTwcX6YwH--V57LT2Vm6Xu63c4poCc 'Pantalla Transformaciones y Listado Transformaciones'

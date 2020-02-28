'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets/LICENSE": "12e3ac30e67295d4334381ccfb59a73b",
"/assets/assets/images/dummy.png": "d2bc1da55adc0a6ad0cd42aaa76bdd7b",
"/assets/assets/images/dart.png": "ebd877fd3d7cbfac03b9f9e22b0c9d95",
"/assets/assets/images/matplotlib.png": "011c603eacaa89ddab9c7bfe0076af24",
"/assets/assets/images/firebase.png": "d43a2f015c4ff517157ec1ea0e1895ed",
"/assets/assets/images/educationCoder.png": "b6e1b7066252f75381f1a0ed761e4584",
"/assets/assets/images/project_coding.png": "fe82e69dbdd5d372822f2f5f92fbac94",
"/assets/assets/images/pandas.png": "f83bead0cda74be7410880987988fb6c",
"/assets/assets/images/python.png": "6ef3d1693a47513da461b4f1eb905015",
"/assets/assets/images/flutter.png": "85afad5b9e3d82311724b55474aa0978",
"/assets/assets/images/logo.png": "e5a4bbe71ef4a280a895ad76a026b1d9",
"/assets/assets/images/java.png": "d11a048456a51609f854dec58ee1f8ea",
"/assets/assets/images/coderNew.png": "6299d27a245714bc829c211c70439fa8",
"/assets/assets/images/expirementCoder.png": "d09a2ee637e8b0e90ce56b826aad4627",
"/assets/assets/images/contactCoder.png": "40a10568a9d928809045c4b902bce18b",
"/assets/assets/images/coder.png": "4a24f9d4c9b6a360b05ddd8536ed7564",
"/assets/assets/images/scikit.png": "ffde16ecf2c48a4f3692b1f22bbaaa5b",
"/assets/assets/images/ieee.png": "32eb68b8c8984f93174ef1e321edeae8",
"/assets/assets/images/coe.png": "de5bbd007bbcfd85e06a25bef787a6f6",
"/assets/assets/images/c.png": "8f42e018a9340b6e4e20161b06525308",
"/assets/assets/images/jupyter.png": "e3640ca47ee795395190679d6b95c0f2",
"/assets/assets/images/numpy.png": "5e7ba8622989f63f789a640ce6878270",
"/assets/assets/images/callCoder.png": "67c5b0d6ebeab5eb0d9b64da3fafcd9f",
"/assets/assets/images/collegeCoder.png": "570f7879436c868f05711c1638d8c2c6",
"/assets/assets/fonts/OpenSans-Bold.ttf": "0062c34665a3fc0f2278cd4e955702ec",
"/assets/assets/fonts/OpenSans-Regular.ttf": "5a798cdadc7cd321e3f72425b70bface",
"/assets/FontManifest.json": "a5546cf6a772b8402879c567a5ed0c50",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/AssetManifest.json": "b5c370e867af02516f83aea29fffe114",
"/index.html": "58afe471efa67b056029b2baaff2559d",
"/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/main.dart.js": "bc920be28aee5dcbc570bf718c7b343b",
"/manifest.json": "0cd4c9d954c3e172e7515a3c1053e4e0"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});

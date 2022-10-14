importScripts("https://www.gstatic.com/firebasejs/7.15.5/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/7.15.5/firebase-messaging.js");

//Using singleton breaks instantiating messaging()
// App firebase = FirebaseWeb.instance.app;


firebase.initializeApp({
  apiKey: 'AIzaSyCDR5alackcAV3y3an61GdqeSO-X7tBAiA',
  authDomain: 'fe-master.firebaseapp.com',
  // databaseURL: 'https://project-id.firebaseio.com',
  projectId: 'fe-master',
  storageBucket: 'fe-master.appspot.com',
  messagingSenderId: '835126305601',
  appId: '1:835126305601:web:5e6641a6e73ca4e5fa77c0',
  measurementId: 'G-5YRVJPSW9E',
});

const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function (payload) {
    const promiseChain = clients
        .matchAll({
            type: "window",
            includeUncontrolled: true
        })
        .then(windowClients => {
            for (let i = 0; i < windowClients.length; i++) {
                const windowClient = windowClients[i];
                windowClient.postMessage(payload);
            }
        })
        .then(() => {
            return registration.showNotification("New Message");
        });
    return promiseChain;
});

self.addEventListener('notificationclick', function (event) {
    console.log('notification received: ', event)
});
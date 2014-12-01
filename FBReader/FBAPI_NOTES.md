What do we want?
===
We want to provide interface similar to the given in VKReader package, in particular:
 * We want to get users personal information (such as dob, age, sex, first name, last name and so on) with one simple method.
 * We want to get group/community information in close manner.
 * If it's possible, we want to search through global open feed in similar way.

Hence we'll need 2 or 3 classes for user/group/community and post.
How do they want us to do it?
===
Since almost everything we can query is either object or realtion between two obecjts, Facebook API is extremely convenient to use, but, unfortunately, it has a **lot** of restrictions: since 30 Apr 2014 *Facebook* has changed it's API model to much more closed one. However, we can [temporary](https://developers.facebook.com/docs/apps/versions#coreextended) (for at least 2 years) avoid a smaller part of related problems by using older public API version.

General query syntax is like this (access token omitted):
```
GET [/v{version-number}]/{first-object}[/{relation}[/{second-object}]...] HTTP/1.1
Host: graph.facebook.com
```
* We are **not** able to query users not having our app installed by username (for bare API requests without special token this often means user's data access prohibition). Moreover, we are only able to query users if we have some user-access-token.
* We **can** read pages with app-access-token (hence, having user-access-token too).

We **can** transfer user-access-token from client to server and use it in server-to-server talks afterwards.

What will we actually do?
===
1. Register the app *FBReader*.
2. Write simple .csp for logging in and retrieving access token.
3. Write some javascript to transfer token back to server.
4. Write class `FBReader.APIMethodCaller`, implement all corresponding methods.
5. Repeat structure of VKReader.
6. Refactor.

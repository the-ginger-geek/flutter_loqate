Loqate helps you locate addresses easier from plain text.

## Features

Currently the package only supports basic address capture that loqate provides.

Address Capture consists of two main API requests: a Find request is used to narrow down a possible list of addresses; and a Retrieve request is used to retrieve a fully formatted address.

A typical address search is made up of a series of Find requests, followed by a Retrieve based on the user selection.

## Getting started

Create an account with loqate [on their website](https://www.loqate.com/en-us/) and get an API key that is needed for the package.

## Usage

```dart
final Loqate loqate = Loqate(apiKey: EnvironmentConfig.loqateApiKey);

final results = await loqate.find(FindRequest(addressString: 'Address Input'));

final searchAddress = results.first;
final retrievedAddresses = await loqate.retrieve(RetrieveRequest(id: searchAddress?.id));
print('street : ${address.street}');
print('admin area : ${address.adminAreaName}');
print('city : ${address.city}');
print('postal code : ${address.postalCode}');
```

## Additional information

To file an issue please do so on our GitHub [issue tracker](https://github.com/the-ginger-geek/flutter_loqate/issues)

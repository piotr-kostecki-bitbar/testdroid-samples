# Testdroid Samples

Repository for Testdroid sample applications and test scripts.

* *appium/sample-scripts/* - directory contains examples to interact with your
Testdroid account for running test written with different languages
(Python, Java, Ruby and CSharp).

* *apps/* - directory contains sample applications that you can start testing
with if you don't have your own.

* *calabash/* - directory examples for Calaba.sh test framework.

* *ios/ios-test-skeleton/* - contains js test framework Jasmine example
for testing (older) iOS versions.

* *xcode/* - contains a sample XCTest and links for [building the application .ipa](http://docs.testdroid.com/xcode/ipa/) and [packaging the tests](http://docs.testdroid.com/xcode/xctest).

* *robot-framework/* - directory contains example for Robot Framework test framework.

# Docker

Testdroid Samples have been dockerized to provide you minimalistic solution in use of our services.
Now you can just type
> docker run --rm -it -e API_KEY=(insert your API key here)

to run our sample tests.

You can provide following environment variables
* API_KEY
* SCREENSHOTS
* TEST
* APP
* DEVICE
* DEVICE_GROUP_ID
* PROJECT
* RUN_NAME
* URL
* APPIUM_URL
* BUNDLE_ID
* APP_PACKAGE
* APP_ACTIVITY
* CMD_TIMEOUT
* TEST_TIMEOUT

## License

See the [LICENSE](LICENSE) file.

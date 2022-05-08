# Important Notes Regarding This Project

This project was a LOT of work. I put a tons of time into it but unfortunately, it is far from perfect. To that end, I figured I'd do a quick write-up explaining some things that I would've like to add. I've split these changes into two categories: "things that I would've added if I had more time" and "things that I would add if this was a commercial product."

### Things That I Would've Added if I Had More Time

* **AWS**: I wanted to put this on AWS for public viewing after the code was completely functional locally. Unfortunately the code only really came together in the final week. As such, I didn't have time to put it on AWS and troubleshoot any issues that would come with doing such.
* **AWS OAuth**: Due to this not being on AWS, implementing OAuth was not possible.
* **Recaptcha**: I was originally going to have a captcha that a user would need to solve to log in, unfortunately, because my code is not on a publically available URL, I wasn't able to implement that API.

### Things That I Would Add if This Was a Commercial Product

In addition to the above, I would implement the following changes:

* **Valid page content**: Because this wasn't really a commercial program, for most pages I just have placeholder text, in a commercial setting this would not be the case.
* **Account information validation**: In a commercial setting, the program would make sure that all the entered user information is vaild
* **More advanced checkout process**: Currently the checkout process is very barebones, I would want to make it far more in-depth to make sure that payment is collected and is shipped properly.

# Code Sources

There are a handful of files that I've copied from [Fat bike trail reports](https://github.com/mad-ent-java-s22/FatBikeTrailReports) and adapted for use with my program. These files are:

* DaoFactory.java
* GenericDao.java
* SessionFactoryProvider.java
* databaseUtility.java
* UserTest.java

# Final Notes

While I certainly couldn't implement everything that I had wanted from the outset, I am very proud of how this turned out. It serves as a template that could be reused for a future project.

# Steve's Capstone Project Proposal

## Project Description:
### Foster Parent One-Stop-Shop


The app I want to build is a one-stop-shop document and event tracker for Foster Parents. Foster Parents are inundated with reporting requirements that are time consuming and hard to track. These come from county, state, and federal requirements, and are often redundant or conflicting. Note-taking apps like Evernote help, but they don't go far enough and do not offer enough customization. And because we are dealing with children, there are privacy and security concerns with storing data.

Some examples of reporting and tracking requirements include doctor's appointments, administration of Rx meds, signing for supplemental WIC checks, enrolling in new schools, parent-teacher conferences and Individual Education Plan reviews. But there are other special one-off reporting requirements as well. For instance, if a child in foster care falls down at the play ground and gets a bruise, the injury must be reported so that this injury isn't conflated with any suspected child abuse events.

As a result, most foster parents end up with a three-ring binder for each child, filled with forms that the foster parent must fill out but also copies of documents such as Rx receipts. These binders are a lot of work. They cannot be carried around as the foster parent goes about his or her daily business.  And then, for short term foster care situations, you have a filing or disposal problem when the child moves on.

For all of these reasons, a mobile app is the perfect solution. And any note taker such as Evernote would get you halfway there. But there are missing ingredients from services now available, such as the ability to produce custom forms (eg, Rx log or recording household fire drills) and to share documents without paying for premium subscriptions.


## What problem does your project solve?
A Foster Parent mobile app gives service providers the ability to document all social services reporting requirements on the fly without running home to get the child's file. A foster parent can immediately snap a picture of a playground bruise and log it in the injury report, getting the details right immediately instead of trying to remember what happened when everyone gets home. And periodic reports, such as documenting household fire drills, can be sent immediately from the phone, instead of making a photo copy and mailing it in.


## Who has this problem?
As described, foster parents in the county social services network are the primary market. However, any parent could use it to consolidate their kids' information in one secure location.


## How will your project solve this problem?
The One-Stop-Shop will help foster parents by providing the functionality missing from other note-taking apps, specifically in the area of securing information but also sharing selected data by creating forms required for social services reporting requirements.

### MVP and outputs
* Child bio page with birthday, school information and status, foster status (eg, emergency, short-term, long-term), Medicaid insurance information.
* Calendar for each child in foster care that contains: parental visit schedule, parent-teacher conferences, WIC appointments, doctors information, Rx refills, case worker visits,
* Reports due to county social services: Rx and OTC log, home inspections, fire drills, injury reports, mileage log for transporting the children to appointments.
* Address book for key contacts: case worker, guardian ad litem, CASA, doctors, therapists

### Stretch Goal

I described how this project will solve the problem in the previous sections, but I left out one thing. I can make an app to help local area foster parents, based on my experience and knowledge of the programs and policies. But there's a bigger problem. For all intents and purposes, there isn't a Colorado foster care program. Instead, there are 64 independent county programs. Colorado provides only the most basic guidance to the counties, who are then free to interpret the regulations as best they can. Multiply that by 50 states, and there is just no way to make a universal app without two things: 1) a lot of customization potential at the user level, and 2) more developers from across the country to research potential requirements.

A stretch goal then would be to add a supplemental web site so that users can create or suggest new features to the developers. (I guess that's just me right now.) This could be in the form of a Reddit clone or other post-and-response style website.


## What inputs does it need?
1. User authentication: email and password
2. Camera access for photos of children and scanning business cards
3. Tables and Forms:
    1. doctors appointments
    2. Rx med refills, pickups, and record of administering
    3. school registration data
4. Calendar inputs: home safety inspections, training requirements, fire drills, WIC check pickups


## What technologies do you plan to use?
1. Swift, Xcode, iOS
2. Firebase and Firebase Analytics API
3. CloudKit and CloudKit.Js web service APIs
4. Cocoapods for dependencies and LayoutTest for TDD
5. Firebase Auth API
6. Socrata Open Data API for child welfare services
7. Other possibilities:
    - Ionic and Angular for pageview/tableview formatting
    - RxSwift and Reactive Extensions


## Prioritized Feature list (Label stretch features with STRETCH)
* Authentication and login
* Input child data using forms and photos
* Enter calendar data from prompts
* Contact lists specific to that child
* Enter reporting data and then generate reporting documents that will be sent to case workers and GALs.
* STRETCH: Supporting website for suggestions and customization

## Pivotal tracker
https://www.pivotaltracker.com/n/projects/2038975

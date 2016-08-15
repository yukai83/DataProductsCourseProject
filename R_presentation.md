"Choose the Best Car to Buy" App Presentation
========================================================
author: Yukai
date: 15-Aug-16
autosize: true

Introduction: The App's Inputs
========================================================

"Choose the Best Car to Buy" App asks the user for the following inputs, which are characteristics of the car they are looking for:

- Minimum Miles per Gallon requirement of the car
- Gross Horsepower of the car
- Number of Cylinders the car engine has (4, 6 or 8)
- Transmission of the engine (Automatic or Manual)
- Approximate number of miles that the car would be driven per week

Introduction: The App's Outputs
========================================================

From the user inputs, the "Choose the Best Car to Buy" App creates a table of outputs of potential cars which the user can buy, which are results filtered based on the user's requirements. The dataset used is the mtcars dataset in R.

Users can then choose the car that best matches their requirements, and consider them for purchase. It's that simple! Try it out today!

Next we will go on to how the code in the App works.

The Dataset used by App: "mtcars""
========================================================

The app makes use of the mtcars dataset in R. 
Below is a summary of the variables of the dataset


```r
colnames(mtcars)
```

```
 [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear"
[11] "carb"
```

These variables are used to filter the results.

The Dataset used by App: "mtcars"" Summary
========================================================

In Summary, these are some details of the mtcars dataset used in the app.

```r
head(mtcars)
```

```
                   mpg cyl disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

```r
tail(mtcars)
```

```
                mpg cyl  disp  hp drat    wt qsec vs am gear carb
Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.7  0  1    5    2
Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.9  1  1    5    2
Ford Pantera L 15.8   8 351.0 264 4.22 3.170 14.5  0  1    5    4
Ferrari Dino   19.7   6 145.0 175 3.62 2.770 15.5  0  1    5    6
Maserati Bora  15.0   8 301.0 335 3.54 3.570 14.6  0  1    5    8
Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.6  1  1    4    2
```

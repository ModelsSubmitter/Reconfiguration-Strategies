README for UPPAAL Stratego 4.1.20-8, January 2022
Copyright (c) 2011 - 2022. Aalborg University.
Copyright (c) 1995 - 2010. Uppsala University and Aalborg University.

January 7, 2022

1. Introduction
2. Installation
3. New features in this release
4. Bugs, issues, feature requests
5. License Agreement

1. Introduction
===============

This is a development snapshot 4.1.20 of UPPAAL Stratego 8 -- a model checker
which combines the previous technologies and adds explicit strategy support.
The tool combines:
* Symbolic analysis (Uppaal zone based exploration),
* Statistical model-checking (Uppaal SMC),
* Strategy synthesis using Timed games (Uppaal TIGA queries with strategy assignment)
* Performance optimization using statistical learning (min/max-imization queries with strategy assignemnt)
* Strategy refinemnent via learning (queries under strategy)
* Strategy evaluation via Symbolic analysis and SMC (queries under strategy)

Note that UPPAAL is free for non-profit applications but we want all
users to fill in a license agreement. This can be done online on the
web site http://www.uppaal.org/ or by sending in the form attached
below.

This product includes software developed by the Apache Software
Foundation (http://www.apache.org/).

2. Installation
===============

To install, unzip the zip-file uppaal-stratego-4.1.20-stratego-8.zip. This should create
the directory uppaal-4.1.20-stratego-8 containing at least the files uppaal,
uppaal.jar, and the directories lib, bin, lib, fonts, res and demo.
The bin contains the verifyta(.exe) and server(.exe) executable engine files and libraries.
The demo contains demonstration model files with suffixes .xml and .q.

The graphical interface requires Java Runtime Environment (JRE) version >= 11.
Java can be downloaded and installed from https://adoptium.net/
We recommend to include JavaSoft registry entries and associations with jar files.

Linux:
* Launch the uppaal script, or run `java -jar uppaal.jar` on command line
* Launch AddLinks.sh to install Desktop shortcuts and launch Uppaal from Start menu

Windows:
* Launch by double clicking the uppaal.jar file, or run `java -jar uppaal.jar` on command line
* Launch AddLinks.vbs to install Desktop shortcuts and run Uppaal from Start menu

MacOS:
* Remove quarantine attribute: `xattr -r -d com.apple.quarantine uppaal-4.1.20-stratego-8`
* Launch uppaal script, or run `java -jar uppaal.jar` on command line
* Move the UPPAAL-4.1.20-stratego-8.app to Applications and launch it from there.

3. New features and changes since Stratego 7
============================================
General:
* Support for 64-bit Windows
* Support for MacOS
* Package Bundle (.app) for MacOS
* Numerous bugfixes and stability improvement fixes in the engine and GUI.

Graphical user interface:
* Editor: template popup menu by right-clicking in the Project tree.
* Editor: fixed caret position issue on multiple screen desktops
* Help: improved and moved to online documentation: https://docs.uppaal.org/
* Preferences: Look-and-feel themes (Native, Java, Flat), dark mode
* Preferences: JetBrains monospace font with ligatures
* Preferences: backported HiDPI/scaling
* Select a custom engine (bundled, remote or configure a custom command)
* Improved Platform Integration (MacOS)

Verifier:
* Learning: deprecated loop over __RESET__ location in favor of `{ integral } -> { floating }`
  expression in the query, where integral is a comma-separated-list of observed integer variables and
  floating is a comma-separated-list of observed floating point variables (double or clock type)
  See demo/stratego/cruise.xml example.
* Learning: support for external learning (experimental)
* Randomized reachability exploration to quickly find concrete counter-examples
  using symbolic queries like A[] and E<>
  See menus Options -> Exploration -> Randomized, and Options -> Randomized parameters.
* Engine option settings are saved and loaded with the model file
* Queries can have custom engine settings (click gear button next to the query editor)
* Query results are saved and loaded with the model file
* Verification dialog option to kill the engine
* Zoom action support to change the query font size

Symbolic Simulator:
* Fixed invariant applicationa and removed superfluous deadlock transitions beyond invariant

Concrete Simulator:
* Complete rewrite of control panel (transition chooser, trace navigation)
* Hybrid automata support (ODE invariant and algebraic guard)
* Trajectory plot widget (right-click on the variable to create one)
* Random and stochastic simulation support (right-click on the "Random" button)
* Saving and loading traces from files
* Simulator tabs are disabled if the model contains unsupported features

Internals:
* New GUI-engine communication protocol based on JSON
* Ported GUI plugin API, support for simulation trace access


4. Bugs, Issues, Feature Requests, Discussions
==============================================
Known Issues in this release:
* Concrete simulator may get stuck after a longer random simulation,
  engine may need to be killed to recover session
  (see "Task Manager" or utility "top" on command line)
* Simulation query still uses the old syntax: `simulate N [bound] { expression-list }`

Please use the meta-repository to file reports and discuss features:
https://github.com/UPPAALModelChecker/UPPAAL-Meta
More contacts and mailing lists:
https://uppaal.org/contact/


4. License Agreement
====================

Please read the license agreement carefully, fill in the form, and send it to:

  Wang Yi
  Department of Computer Systems
  Uppsala University
  Box 325
  751 05 Uppsala, Sweden

The text of the agreement follows:

We (the licensee) understand that UPPAAL includes the programs:
uppaal.jar, uppaal, server, socketserver, verifyta and that
they are supplied "as is", without expressed or implied warranty.
We agree on the following:

1. You (the licensers) do not have any obligation to provide any
   maintenance or consulting help with respect to UPPAAL.

2. You neither have any responsibility for the correctness of systems
   verified using UPPAAL, nor for the correctness of UPPAAL itself.

3. We will never distribute or modify any part of the UPPAAL code
   (i.e. the source code and the object code) without a written
   permission of Wang Yi (Uppsala University) or Kim G Larsen (Aalborg
   University).

4. We will only use UPPAAL for non-profit research purposes. This
   implies that neither UPPAAL nor any part of its code should be used
   or modified for any commercial software product.

In the event that you should release new versions of UPPAAL to us, we
agree that they will also fall under all of these terms.

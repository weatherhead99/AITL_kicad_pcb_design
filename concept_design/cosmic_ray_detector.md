Simple Cosmic Ray Detector with PIN Photodiode
==============================================

Top level Concept / Spec
------------------------


The idea is to build a cosmic ray detector with a simple op-amp based frontend and shaping circuit. We will use a commercial, high area PIN photodiode as the sensor. The circuit should have an analog frontend which shapes the pulse (two stage CSA -> CRRC filter), a comparator circuit to compare against a reference threshold, and a digital output on BNC which allows us to measure the output pulses (50 ohm output impedance). The threshold level should be able to be set digitally via an external controller.

We should also include test points at strategic locations to enable probing the circuit operation.

Power to the board will be supplied via 4mm "banana" jacks, and the board should include its own LDO regulators to supply all components. The PIN diode should be reverse biased with the bias voltage derived from the power supply and set by a resistor.

All components should be surface mount as far as possible.

We will not be optimising this much - remember the idea is to learn basic 
PCB design not to go on a massive tangent about amplifier frontends (which
hopefully are covered elsewhere in the AITL courses).


Parts to Use
------------

PIN photodiode: Vishay VBPW34FAS- popular, easy to obtain high area PIN photodiode with good sensitivity. The FAS model includes optical blocking, so should be ideal to also detect high energy cosmic rays & gamma rays

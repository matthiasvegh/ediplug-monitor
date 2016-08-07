struct Timepoint {
1: double epoch
}

struct Consumption {
1: double watts
}

struct Measurement {
1: string plugName
2: Timepoint timepoint
3: Consumption consumption
}

service Ediplug {
	double getCurrentConsumption()
	list<Measurement> getConsumptionBetween(1: Timepoint begin_, 2: Timepoint end_)
}

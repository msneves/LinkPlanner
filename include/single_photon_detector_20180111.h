# ifndef SINGLE_PHOTON_DETECTOR_H_
# define SINGLE_PHOTON_DETECTOR_H_

# include "netxpto_20180118.h"
# include <random>

class SinglePhotonDetector : public Block {
	
	// Input Parameters
	t_integer path{ 0 };
	std::default_random_engine generator;

public:

	SinglePhotonDetector(vector<Signal *> &inputSignals, vector<Signal *> &outputSignals) : Block(inputSignals, outputSignals){};

	void initialize(void);

	bool runBlock(void);

	void setPath(t_integer p) { path = p; };
	t_integer getPath() { return path; };

	
};

#endif

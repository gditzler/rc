# all the packages to install
packages = ["AWS", "Bio", "BioSeq", "AnsiColor", "AppConf", "ArgParse", "ArrayViews", "BackpropNeuralNet", "BayesNets", "BlackBoxOptim", "BloomFilters", "Boltzmann", "Bootstrap", "CSV", "Calculus", "Clustering", "CompressedSensing", "ConfidenceWeighted", "ConjugatePriors", "ControlSystems", "Convex", "CurveFit", "DSP", "DecisionTree", "DetectionTheory", "DimensionalityReduction", "Distances", "DistributedArrays", "Distributions", "Diversity", "Docile", "DocOpt", "EcologicalNetwork", "Evolutionary", "ExcelReaders", "FastTransforms", "FastaIO", "FunctionalData", "GLM", "GLMNet", "GLPK", "GLPlot", "GZip", "Gadfly", "Gaston", "GaussianMixtures", "GaussianMixtureTest", "GaussianProcesses", "GenericSVD", "GeneticAlgorithms", "GitHub", "GradientBoost", "HDF5", "HDFS", "HiddenMarkovModels", "IJulia", "Images", "ImageView", "JSON", "KDTrees", "KernelDensity", "KernelDensityEstimate", "LARS", "LIBLINEAR", "LIBSVM", "Lasso", "Loss", "MAT", "MCMC", "MFCC", "MLBase", "MLKernels", "MLDataUtils", "MachineLearning", "ManifoldLearning", "MathToolkit", "MixtureModels", "Mocha", "Mongo", "NFFT", "NLsolve", "NLreg", "NLopt", "NMF", "NPZ", "NaiveBayes", "NearestNeighbors", "NoveltyColors", "NonNegLeastSquares", "Optim", "OptimPack", "Options", "PGM", "PGFPlots", "Pandas", "PhyloNetworks", "PhyloTrees", "Phylogenetics", "Plotly", "PlotlyJS", "Plots", "Queueing", "RDatasets", "ROCAnalysis", "RandomFerns", "SGDOptim", "SVMLightLoader", "SQLite", "Sampling", "ScikitLearn", "Shannon", "SmoothingKernels", "Stats", "StatsBase", "TikzPictures", "TikzGraphs", "WordNet", "Word2Vec", "Winston", "YAML"]

for i = 1:length(packages)
  Pkg.add(packages[i])
end




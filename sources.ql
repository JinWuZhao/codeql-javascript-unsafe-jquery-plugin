import javascript

predicate isSource(DataFlow::Node source) {
    exists(DataFlow::FunctionNode pluginFunc | 
        pluginFunc = jquery().getAPropertyRead("fn").getAPropertySource().getAFunctionValue()
        and pluginFunc.getLastParameter() = source)
}

from DataFlow::Node node
where isSource(node)
select node
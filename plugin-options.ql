import javascript

from DataFlow::FunctionNode funcNode
where jquery().getAPropertyRead("fn").getAPropertySource().getAFunctionValue() = funcNode
select funcNode, funcNode.getLastParameter()
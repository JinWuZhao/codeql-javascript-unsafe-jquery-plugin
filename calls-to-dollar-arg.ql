import javascript

from CallExpr dollarCall
where dollarCall.getCalleeName() = "$" and dollarCall.getNumArgument() = 1
select dollarCall.getArgument(0)
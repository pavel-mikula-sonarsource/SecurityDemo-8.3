func @_SecurityDemo83.Program.Main$string$$$(none) -> () loc("C:\\Projects\\SecurityDemo-8.3\\SecurityDemo-8.3\\Program.cs" :7 :8) {
^entry (%_args : none):
%0 = cbde.alloca none loc("C:\\Projects\\SecurityDemo-8.3\\SecurityDemo-8.3\\Program.cs" :7 :32)
cbde.store %_args, %0 : memref<none> loc("C:\\Projects\\SecurityDemo-8.3\\SecurityDemo-8.3\\Program.cs" :7 :32)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CreateWebHostBuilder
%1 = cbde.unknown : none loc("C:\\Projects\\SecurityDemo-8.3\\SecurityDemo-8.3\\Program.cs" :9 :33) // Not a variable of known type: args
%2 = cbde.unknown : none loc("C:\\Projects\\SecurityDemo-8.3\\SecurityDemo-8.3\\Program.cs" :9 :12) // CreateWebHostBuilder(args) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Projects\\SecurityDemo-8.3\\SecurityDemo-8.3\\Program.cs" :9 :12) // CreateWebHostBuilder(args).Build() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Projects\\SecurityDemo-8.3\\SecurityDemo-8.3\\Program.cs" :9 :12) // CreateWebHostBuilder(args).Build().Run() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}

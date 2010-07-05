@STATIC;1.0;I;21;Foundation/CPObject.jt;1056;objj_executeFile("Foundation/CPObject.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "AppController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("theWindow"), new objj_ivar("testTable")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("applicationDidFinishLaunching:"), function $AppController__applicationDidFinishLaunching_(self, _cmd, aNotification)
{ with(self)
{
}
},["void","CPNotification"]), new objj_method(sel_getUid("awakeFromCib"), function $AppController__awakeFromCib(self, _cmd)
{ with(self)
{debugger;
    var argumentColumn = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "argumentColumn");
    objj_msgSend(argumentColumn, "setWidth:", CGRectGetWidth(objj_msgSend(testTable, "frame")));
    objj_msgSend(testTable, "setRowHeight:", 24.0);
    objj_msgSend(testTable, "setHeaderView:", nil);
    objj_msgSend(testTable, "setCornerView:", nil);
    objj_msgSend(testTable, "addTableColumn:", argumentColumn);
}
},["void"])]);
}


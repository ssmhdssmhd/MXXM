.class public abstract Lorg/kxml2/wap/syncml/SyncML;
.super Ljava/lang/Object;


# static fields
.field public static final TAG_TABLE_0:[Ljava/lang/String;

.field public static final TAG_TABLE_1:[Ljava/lang/String;

.field public static final TAG_TABLE_2_DM:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x38

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Add"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "Alert"

    aput-object v5, v1, v4

    const/4 v5, 0x2

    const-string v6, "Archive"

    aput-object v6, v1, v5

    const/4 v6, 0x3

    const-string v7, "Atomic"

    aput-object v7, v1, v6

    const/4 v7, 0x4

    const-string v8, "Chal"

    aput-object v8, v1, v7

    const/4 v8, 0x5

    const-string v9, "Cmd"

    aput-object v9, v1, v8

    const/4 v9, 0x6

    const-string v10, "CmdID"

    aput-object v10, v1, v9

    const/4 v10, 0x7

    const-string v11, "CmdRef"

    aput-object v11, v1, v10

    const/16 v11, 0x8

    const-string v12, "Copy"

    aput-object v12, v1, v11

    const/16 v13, 0x9

    const-string v14, "Cred"

    aput-object v14, v1, v13

    const/16 v14, 0xa

    const-string v15, "Data"

    aput-object v15, v1, v14

    const/16 v15, 0xb

    const-string v16, "Delete"

    aput-object v16, v1, v15

    const/16 v16, 0xc

    const-string v17, "Exec"

    aput-object v17, v1, v16

    const/16 v17, 0xd

    const-string v18, "Final"

    aput-object v18, v1, v17

    const/16 v18, 0xe

    const-string v19, "Get"

    aput-object v19, v1, v18

    const/16 v19, 0xf

    const-string v20, "Item"

    aput-object v20, v1, v19

    const/16 v20, 0x10

    const-string v21, "Lang"

    aput-object v21, v1, v20

    const/16 v21, 0x11

    const-string v22, "LocName"

    aput-object v22, v1, v21

    const/16 v22, 0x0

    const/16 v2, 0x12

    const-string v23, "LocURI"

    aput-object v23, v1, v2

    const-string v23, "Map"

    const/16 v24, 0x13

    aput-object v23, v1, v24

    const-string v23, "MapItem"

    const/16 v24, 0x14

    aput-object v23, v1, v24

    const-string v23, "Meta"

    const/16 v24, 0x15

    aput-object v23, v1, v24

    const-string v23, "MsgID"

    const/16 v24, 0x16

    aput-object v23, v1, v24

    const-string v23, "MsgRef"

    const/16 v24, 0x17

    aput-object v23, v1, v24

    const-string v23, "NoResp"

    const/16 v24, 0x18

    aput-object v23, v1, v24

    const-string v23, "NoResults"

    const/16 v24, 0x19

    aput-object v23, v1, v24

    const-string v23, "Put"

    const/16 v24, 0x1a

    aput-object v23, v1, v24

    const-string v23, "Replace"

    const/16 v24, 0x1b

    aput-object v23, v1, v24

    const-string v23, "RespURI"

    const/16 v24, 0x1c

    aput-object v23, v1, v24

    const-string v23, "Results"

    const/16 v24, 0x1d

    aput-object v23, v1, v24

    const-string v23, "Search"

    const/16 v24, 0x1e

    aput-object v23, v1, v24

    const-string v23, "Sequence"

    const/16 v24, 0x1f

    aput-object v23, v1, v24

    const-string v23, "SessionID"

    const/16 v24, 0x20

    aput-object v23, v1, v24

    const-string v23, "SftDel"

    const/16 v24, 0x21

    aput-object v23, v1, v24

    const-string v23, "Source"

    const/16 v24, 0x22

    aput-object v23, v1, v24

    const-string v23, "SourceRef"

    const/16 v24, 0x23

    aput-object v23, v1, v24

    const-string v23, "Status"

    const/16 v24, 0x24

    aput-object v23, v1, v24

    const-string v23, "Sync"

    const/16 v24, 0x25

    aput-object v23, v1, v24

    const-string v23, "SyncBody"

    const/16 v24, 0x26

    aput-object v23, v1, v24

    const-string v23, "SyncHdr"

    const/16 v24, 0x27

    aput-object v23, v1, v24

    const-string v23, "SyncML"

    const/16 v24, 0x28

    aput-object v23, v1, v24

    const-string v23, "Target"

    const/16 v24, 0x29

    aput-object v23, v1, v24

    const-string v23, "TargetRef"

    const/16 v24, 0x2a

    aput-object v23, v1, v24

    const-string v23, "Reserved for future use"

    const/16 v24, 0x2b

    aput-object v23, v1, v24

    const-string v23, "VerDTD"

    const/16 v24, 0x2c

    aput-object v23, v1, v24

    const-string v23, "VerProto"

    const/16 v24, 0x2d

    aput-object v23, v1, v24

    const-string v23, "NumberOfChanged"

    const/16 v24, 0x2e

    aput-object v23, v1, v24

    const-string v23, "MoreData"

    const/16 v24, 0x2f

    aput-object v23, v1, v24

    const-string v23, "Field"

    const/16 v24, 0x30

    aput-object v23, v1, v24

    const-string v23, "Filter"

    const/16 v24, 0x31

    aput-object v23, v1, v24

    const-string v23, "Record"

    const/16 v24, 0x32

    aput-object v23, v1, v24

    const-string v23, "FilterType"

    const/16 v24, 0x33

    aput-object v23, v1, v24

    const-string v23, "SourceParent"

    const/16 v24, 0x34

    aput-object v23, v1, v24

    const-string v23, "TargetParent"

    const/16 v24, 0x35

    aput-object v23, v1, v24

    const-string v23, "Move"

    const/16 v24, 0x36

    aput-object v23, v1, v24

    const-string v23, "Correlator"

    const/16 v24, 0x37

    aput-object v23, v1, v24

    sput-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string v23, "Anchor"

    aput-object v23, v1, v22

    const-string v23, "EMI"

    aput-object v23, v1, v4

    const-string v23, "Format"

    aput-object v23, v1, v5

    const-string v23, "FreeID"

    aput-object v23, v1, v6

    const-string v23, "FreeMem"

    aput-object v23, v1, v7

    const-string v23, "Last"

    aput-object v23, v1, v8

    const-string v23, "Mark"

    aput-object v23, v1, v9

    const-string v23, "MaxMsgSize"

    aput-object v23, v1, v10

    const-string v23, "Mem"

    aput-object v23, v1, v11

    const-string v23, "MetInf"

    aput-object v23, v1, v13

    const-string v23, "Next"

    aput-object v23, v1, v14

    const-string v23, "NextNonce"

    aput-object v23, v1, v15

    const-string v23, "SharedMem"

    aput-object v23, v1, v16

    const-string v23, "Size"

    aput-object v23, v1, v17

    const-string v23, "Type"

    aput-object v23, v1, v18

    const-string v23, "Version"

    aput-object v23, v1, v19

    const-string v23, "MaxObjSize"

    aput-object v23, v1, v20

    const-string v23, "FieldLevel"

    aput-object v23, v1, v21

    sput-object v1, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccessType"

    aput-object v1, v0, v22

    const-string v1, "ACL"

    aput-object v1, v0, v4

    aput-object v3, v0, v5

    const-string v1, "b64"

    aput-object v1, v0, v6

    const-string v1, "bin"

    aput-object v1, v0, v7

    const-string v1, "bool"

    aput-object v1, v0, v8

    const-string v1, "chr"

    aput-object v1, v0, v9

    const-string v1, "CaseSense"

    aput-object v1, v0, v10

    const-string v1, "CIS"

    aput-object v1, v0, v11

    aput-object v12, v0, v13

    const-string v1, "CS"

    aput-object v1, v0, v14

    const-string v1, "date"

    aput-object v1, v0, v15

    const-string v1, "DDFName"

    aput-object v1, v0, v16

    const-string v1, "DefaultValue"

    aput-object v1, v0, v17

    const-string v1, "Delete"

    aput-object v1, v0, v18

    const-string v1, "Description"

    aput-object v1, v0, v19

    const-string v1, "DDFFormat"

    aput-object v1, v0, v20

    const-string v1, "DFProperties"

    aput-object v1, v0, v21

    const-string v1, "DFTitle"

    aput-object v1, v0, v2

    const-string v1, "DFType"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "Dynamic"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "Exec"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "float"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "Format"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "Get"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "int"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "Man"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "MgmtTree"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "MIME"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "Mod"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "Name"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "Node"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "node"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "NodeName"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "null"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "Occurence"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "One"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "OneOrMore"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "OneOrN"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "Path"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "Permanent"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "Replace"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "RTProperties"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "Scope"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "Size"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "time"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "Title"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "TStamp"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "Type"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "Value"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "VerDTD"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "VerNo"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "xml"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "ZeroOrMore"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "ZeroOrN"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "ZeroOrOne"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sput-object v0, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDMParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 3

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createParser()Lorg/kxml2/wap/WbxmlParser;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createDMSerializer()Lorg/kxml2/wap/WbxmlSerializer;
    .locals 3

    invoke-static {}, Lorg/kxml2/wap/syncml/SyncML;->createSerializer()Lorg/kxml2/wap/WbxmlSerializer;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_2_DM:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 3

    new-instance v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    const/4 v1, 0x0

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    const/4 v1, 0x1

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSerializer()Lorg/kxml2/wap/WbxmlSerializer;
    .locals 3

    new-instance v0, Lorg/kxml2/wap/WbxmlSerializer;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlSerializer;-><init>()V

    const/4 v1, 0x0

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_0:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    const/4 v1, 0x1

    sget-object v2, Lorg/kxml2/wap/syncml/SyncML;->TAG_TABLE_1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/wap/WbxmlSerializer;->setTagTable(I[Ljava/lang/String;)V

    return-object v0
.end method

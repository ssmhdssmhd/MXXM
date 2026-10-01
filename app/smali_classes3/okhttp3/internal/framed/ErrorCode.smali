.class public final enum Lokhttp3/internal/framed/ErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lokhttp3/internal/framed/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum COMPRESSION_ERROR:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum CONNECT_ERROR:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum ENHANCE_YOUR_CALM:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum FRAME_TOO_LARGE:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum HTTP_1_1_REQUIRED:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum INADEQUATE_SECURITY:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum INVALID_CREDENTIALS:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum STREAM_ALREADY_CLOSED:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum STREAM_CLOSED:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum STREAM_IN_USE:Lokhttp3/internal/framed/ErrorCode;

.field public static final enum UNSUPPORTED_VERSION:Lokhttp3/internal/framed/ErrorCode;

.field private static final synthetic a:[Lokhttp3/internal/framed/ErrorCode;


# instance fields
.field public final httpCode:I

.field public final spdyGoAwayCode:I

.field public final spdyRstCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lokhttp3/internal/framed/ErrorCode;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    new-instance v1, Lokhttp3/internal/framed/ErrorCode;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    new-instance v2, Lokhttp3/internal/framed/ErrorCode;

    const/4 v6, 0x2

    const/4 v7, -0x1

    const-string v3, "INVALID_STREAM"

    const/4 v4, 0x2

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    new-instance v3, Lokhttp3/internal/framed/ErrorCode;

    const/4 v7, 0x4

    const/4 v8, -0x1

    const-string v4, "UNSUPPORTED_VERSION"

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lokhttp3/internal/framed/ErrorCode;->UNSUPPORTED_VERSION:Lokhttp3/internal/framed/ErrorCode;

    new-instance v4, Lokhttp3/internal/framed/ErrorCode;

    const/16 v8, 0x8

    const/4 v9, -0x1

    const-string v5, "STREAM_IN_USE"

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-direct/range {v4 .. v9}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lokhttp3/internal/framed/ErrorCode;->STREAM_IN_USE:Lokhttp3/internal/framed/ErrorCode;

    new-instance v5, Lokhttp3/internal/framed/ErrorCode;

    const/16 v9, 0x9

    const/4 v10, -0x1

    const-string v6, "STREAM_ALREADY_CLOSED"

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-direct/range {v5 .. v10}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lokhttp3/internal/framed/ErrorCode;->STREAM_ALREADY_CLOSED:Lokhttp3/internal/framed/ErrorCode;

    new-instance v6, Lokhttp3/internal/framed/ErrorCode;

    const/4 v10, 0x6

    const/4 v11, 0x2

    const-string v7, "INTERNAL_ERROR"

    const/4 v8, 0x6

    const/4 v9, 0x2

    invoke-direct/range {v6 .. v11}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    new-instance v0, Lokhttp3/internal/framed/ErrorCode;

    const/4 v4, 0x7

    const/4 v5, -0x1

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x3

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lokhttp3/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    new-instance v1, Lokhttp3/internal/framed/ErrorCode;

    const/4 v6, -0x1

    const-string v2, "STREAM_CLOSED"

    const/16 v3, 0x8

    const/4 v4, 0x5

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lokhttp3/internal/framed/ErrorCode;->STREAM_CLOSED:Lokhttp3/internal/framed/ErrorCode;

    new-instance v2, Lokhttp3/internal/framed/ErrorCode;

    const/16 v6, 0xb

    const/4 v7, -0x1

    const-string v3, "FRAME_TOO_LARGE"

    const/16 v4, 0x9

    const/4 v5, 0x6

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lokhttp3/internal/framed/ErrorCode;->FRAME_TOO_LARGE:Lokhttp3/internal/framed/ErrorCode;

    new-instance v3, Lokhttp3/internal/framed/ErrorCode;

    const/4 v7, 0x3

    const/4 v8, -0x1

    const-string v4, "REFUSED_STREAM"

    const/16 v5, 0xa

    const/4 v6, 0x7

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    new-instance v4, Lokhttp3/internal/framed/ErrorCode;

    const/4 v8, 0x5

    const/4 v9, -0x1

    const-string v5, "CANCEL"

    const/16 v6, 0xb

    const/16 v7, 0x8

    invoke-direct/range {v4 .. v9}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    new-instance v5, Lokhttp3/internal/framed/ErrorCode;

    const/4 v10, -0x1

    const-string v6, "COMPRESSION_ERROR"

    const/16 v7, 0xc

    const/16 v8, 0x9

    invoke-direct/range {v5 .. v10}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lokhttp3/internal/framed/ErrorCode;->COMPRESSION_ERROR:Lokhttp3/internal/framed/ErrorCode;

    new-instance v6, Lokhttp3/internal/framed/ErrorCode;

    const/4 v11, -0x1

    const-string v7, "CONNECT_ERROR"

    const/16 v8, 0xd

    const/16 v9, 0xa

    invoke-direct/range {v6 .. v11}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lokhttp3/internal/framed/ErrorCode;->CONNECT_ERROR:Lokhttp3/internal/framed/ErrorCode;

    new-instance v0, Lokhttp3/internal/framed/ErrorCode;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v1, "ENHANCE_YOUR_CALM"

    const/16 v2, 0xe

    const/16 v3, 0xb

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lokhttp3/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lokhttp3/internal/framed/ErrorCode;

    new-instance v1, Lokhttp3/internal/framed/ErrorCode;

    const/4 v6, -0x1

    const-string v2, "INADEQUATE_SECURITY"

    const/16 v3, 0xf

    const/16 v4, 0xc

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lokhttp3/internal/framed/ErrorCode;->INADEQUATE_SECURITY:Lokhttp3/internal/framed/ErrorCode;

    new-instance v2, Lokhttp3/internal/framed/ErrorCode;

    const/4 v7, -0x1

    const-string v3, "HTTP_1_1_REQUIRED"

    const/16 v4, 0x10

    const/16 v5, 0xd

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lokhttp3/internal/framed/ErrorCode;->HTTP_1_1_REQUIRED:Lokhttp3/internal/framed/ErrorCode;

    new-instance v3, Lokhttp3/internal/framed/ErrorCode;

    const/16 v7, 0xa

    const/4 v8, -0x1

    const-string v4, "INVALID_CREDENTIALS"

    const/16 v5, 0x11

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/framed/ErrorCode;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lokhttp3/internal/framed/ErrorCode;->INVALID_CREDENTIALS:Lokhttp3/internal/framed/ErrorCode;

    const/16 v0, 0x12

    new-array v0, v0, [Lokhttp3/internal/framed/ErrorCode;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->INVALID_STREAM:Lokhttp3/internal/framed/ErrorCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->UNSUPPORTED_VERSION:Lokhttp3/internal/framed/ErrorCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->STREAM_IN_USE:Lokhttp3/internal/framed/ErrorCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->STREAM_ALREADY_CLOSED:Lokhttp3/internal/framed/ErrorCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->STREAM_CLOSED:Lokhttp3/internal/framed/ErrorCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->FRAME_TOO_LARGE:Lokhttp3/internal/framed/ErrorCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->COMPRESSION_ERROR:Lokhttp3/internal/framed/ErrorCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CONNECT_ERROR:Lokhttp3/internal/framed/ErrorCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lokhttp3/internal/framed/ErrorCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->INADEQUATE_SECURITY:Lokhttp3/internal/framed/ErrorCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->HTTP_1_1_REQUIRED:Lokhttp3/internal/framed/ErrorCode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->INVALID_CREDENTIALS:Lokhttp3/internal/framed/ErrorCode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/internal/framed/ErrorCode;->a:[Lokhttp3/internal/framed/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lokhttp3/internal/framed/ErrorCode;->httpCode:I

    iput p4, p0, Lokhttp3/internal/framed/ErrorCode;->spdyRstCode:I

    iput p5, p0, Lokhttp3/internal/framed/ErrorCode;->spdyGoAwayCode:I

    return-void
.end method

.method public static fromHttp2(I)Lokhttp3/internal/framed/ErrorCode;
    .locals 5

    invoke-static {}, Lokhttp3/internal/framed/ErrorCode;->values()[Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lokhttp3/internal/framed/ErrorCode;->httpCode:I

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static fromSpdy3Rst(I)Lokhttp3/internal/framed/ErrorCode;
    .locals 5

    invoke-static {}, Lokhttp3/internal/framed/ErrorCode;->values()[Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lokhttp3/internal/framed/ErrorCode;->spdyRstCode:I

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static fromSpdyGoAway(I)Lokhttp3/internal/framed/ErrorCode;
    .locals 5

    invoke-static {}, Lokhttp3/internal/framed/ErrorCode;->values()[Lokhttp3/internal/framed/ErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lokhttp3/internal/framed/ErrorCode;->spdyGoAwayCode:I

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/internal/framed/ErrorCode;
    .locals 1

    const-class v0, Lokhttp3/internal/framed/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/internal/framed/ErrorCode;

    return-object p0
.end method

.method public static values()[Lokhttp3/internal/framed/ErrorCode;
    .locals 1

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->a:[Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {v0}, [Lokhttp3/internal/framed/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/ErrorCode;

    return-object v0
.end method

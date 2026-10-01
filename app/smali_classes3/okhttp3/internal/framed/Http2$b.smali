.class final Lokhttp3/internal/framed/Http2$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DATA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "HEADERS"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "PRIORITY"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v5, "RST_STREAM"

    aput-object v5, v0, v3

    const/4 v5, 0x4

    const-string v6, "SETTINGS"

    aput-object v6, v0, v5

    const-string v6, "PUSH_PROMISE"

    const/4 v7, 0x5

    aput-object v6, v0, v7

    const-string v6, "PING"

    const/4 v7, 0x6

    aput-object v6, v0, v7

    const-string v6, "GOAWAY"

    const/4 v7, 0x7

    aput-object v6, v0, v7

    const/16 v6, 0x8

    const-string v7, "WINDOW_UPDATE"

    aput-object v7, v0, v6

    const-string v7, "CONTINUATION"

    const/16 v8, 0x9

    aput-object v7, v0, v8

    sput-object v0, Lokhttp3/internal/framed/Http2$b;->a:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/framed/Http2$b;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    sget-object v7, Lokhttp3/internal/framed/Http2$b;->c:[Ljava/lang/String;

    array-length v7, v7

    const/16 v8, 0x20

    if-ge v0, v7, :cond_0

    sget-object v7, Lokhttp3/internal/framed/Http2$b;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v9, v10, v2

    const-string v9, "%8s"

    invoke-static {v9, v10}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v0, v2

    sget-object v0, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    const-string v7, "END_STREAM"

    aput-object v7, v0, v1

    filled-new-array {v1}, [I

    move-result-object v0

    sget-object v1, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    const-string v7, "PADDED"

    aput-object v7, v1, v6

    const/4 v1, 0x0

    :goto_1
    const-string v7, "|PADDED"

    if-gtz v1, :cond_1

    aget v9, v0, v1

    sget-object v10, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    or-int/lit8 v11, v9, 0x8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    aget-object v9, v13, v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    const-string v9, "END_HEADERS"

    aput-object v9, v1, v5

    sget-object v1, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    aput-object v4, v1, v8

    sget-object v1, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    const-string v4, "END_HEADERS|PRIORITY"

    const/16 v9, 0x24

    aput-object v4, v1, v9

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_3

    filled-new-array {v5, v8, v9}, [I

    move-result-object v4

    aget v4, v4, v1

    const/4 v10, 0x0

    :goto_3
    if-gtz v10, :cond_2

    aget v11, v0, v10

    sget-object v12, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    or-int v13, v11, v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    aget-object v15, v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x7c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v16, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    aget-object v2, v16, v4

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v13

    sget-object v2, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    or-int/lit8 v12, v13, 0x8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    aget-object v11, v14, v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v12

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_4
    sget-object v0, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_5

    sget-object v0, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-nez v0, :cond_4

    sget-object v0, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    sget-object v1, Lokhttp3/internal/framed/Http2$b;->c:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(BB)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_2

    :cond_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    sget-object v0, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    const-string p0, "ACK"

    goto :goto_2

    :cond_1
    sget-object p0, Lokhttp3/internal/framed/Http2$b;->c:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_2

    :pswitch_2
    sget-object p0, Lokhttp3/internal/framed/Http2$b;->c:[Ljava/lang/String;

    aget-object p0, p0, p1

    goto :goto_2

    :cond_2
    sget-object v0, Lokhttp3/internal/framed/Http2$b;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    const-string p0, "HEADERS"

    const-string p1, "PUSH_PROMISE"

    :goto_1
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-nez p0, :cond_4

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_4

    const-string p0, "PRIORITY"

    const-string p1, "COMPRESSED"

    goto :goto_1

    :cond_4
    move-object p0, v0

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .locals 6

    sget-object v0, Lokhttp3/internal/framed/Http2$b;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p3, v0, :cond_0

    sget-object v0, Lokhttp3/internal/framed/Http2$b;->a:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "0x%02x"

    invoke-static {v0, v3}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x5

    if-nez p4, :cond_1

    const-string p3, ""

    goto :goto_3

    :cond_1
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    sget-object v4, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge p4, v4, :cond_3

    sget-object v4, Lokhttp3/internal/framed/Http2$b;->b:[Ljava/lang/String;

    aget-object v4, v4, p4

    goto :goto_1

    :pswitch_1
    if-ne p4, v2, :cond_2

    const-string p3, "ACK"

    goto :goto_3

    :cond_2
    sget-object p3, Lokhttp3/internal/framed/Http2$b;->c:[Ljava/lang/String;

    aget-object p3, p3, p4

    goto :goto_3

    :pswitch_2
    sget-object p3, Lokhttp3/internal/framed/Http2$b;->c:[Ljava/lang/String;

    aget-object p3, p3, p4

    goto :goto_3

    :cond_3
    sget-object v4, Lokhttp3/internal/framed/Http2$b;->c:[Ljava/lang/String;

    aget-object v4, v4, p4

    :goto_1
    if-ne p3, v3, :cond_4

    and-int/lit8 v5, p4, 0x4

    if-eqz v5, :cond_4

    const-string p3, "HEADERS"

    const-string p4, "PUSH_PROMISE"

    :goto_2
    invoke-virtual {v4, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_4
    if-nez p3, :cond_5

    and-int/lit8 p3, p4, 0x20

    if-eqz p3, :cond_5

    const-string p3, "PRIORITY"

    const-string p4, "COMPRESSED"

    goto :goto_2

    :cond_5
    move-object p3, v4

    :goto_3
    if-eqz p0, :cond_6

    const-string p0, "<<"

    goto :goto_4

    :cond_6
    const-string p0, ">>"

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p0, p4, v1

    aput-object p1, p4, v2

    const/4 p0, 0x2

    aput-object p2, p4, p0

    const/4 p0, 0x3

    aput-object v0, p4, p0

    const/4 p0, 0x4

    aput-object p3, p4, p0

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p0, p4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

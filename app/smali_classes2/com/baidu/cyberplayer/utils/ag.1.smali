.class public Lcom/baidu/cyberplayer/utils/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static a:Lcom/baidu/cyberplayer/utils/cl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    const/4 v0, 0x4

    sput v0, Lcom/baidu/cyberplayer/utils/ag;->a:I

    .line 283
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ag;->b(I)V

    .line 290
    return-void
.end method

.method public static final a()I
    .locals 1

    .line 263
    sget v0, Lcom/baidu/cyberplayer/utils/ag;->a:I

    return v0
.end method

.method public static final a()Lcom/baidu/cyberplayer/utils/cl;
    .locals 2

    .line 206
    sget-object v0, Lcom/baidu/cyberplayer/utils/ag;->a:Lcom/baidu/cyberplayer/utils/cl;

    if-nez v0, :cond_1

    .line 207
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->b()Lcom/baidu/cyberplayer/utils/cl;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/ag;->a:Lcom/baidu/cyberplayer/utils/cl;

    .line 208
    sget-object v0, Lcom/baidu/cyberplayer/utils/ag;->a:Lcom/baidu/cyberplayer/utils/cl;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/baidu/cyberplayer/utils/ag;->a:Lcom/baidu/cyberplayer/utils/cl;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/R;->a(Lcom/baidu/cyberplayer/utils/cl;)V

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No XML parser defined. And unable to laod any. \nTry to invoke UPnP.setXMLParser before UPnP.getXMLParser"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/cyberplayer/utils/ag;->a:Lcom/baidu/cyberplayer/utils/cl;

    return-object v0
.end method

.method public static final a()Ljava/lang/String;
    .locals 3

    .line 55
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UPnP/1.0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CyberLinkJava"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final a(I)Ljava/lang/String;
    .locals 4

    .line 172
    const v0, 0xffff

    and-int/2addr p0, v0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 174
    nop

    .line 175
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    rsub-int/lit8 v3, v0, 0x4

    if-ge v2, v3, :cond_0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 178
    return-object p0
.end method

.method public static final a()V
    .locals 0

    .line 295
    return-void
.end method

.method public static final a(I)V
    .locals 1

    .line 82
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 90
    :pswitch_1
    sput-boolean v0, Lcom/baidu/cyberplayer/utils/Q;->b:Z

    .line 92
    goto :goto_0

    .line 120
    :pswitch_2
    const-string p0, "FF0E::C"

    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/aL;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_3
    const-string p0, "FF05::C"

    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/aL;->a(Ljava/lang/String;)V

    .line 117
    goto :goto_0

    .line 110
    :pswitch_4
    const-string p0, "FF04::C"

    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/aL;->a(Ljava/lang/String;)V

    .line 112
    goto :goto_0

    .line 105
    :pswitch_5
    const-string p0, "FF03::C"

    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/aL;->a(Ljava/lang/String;)V

    .line 107
    goto :goto_0

    .line 100
    :pswitch_6
    const-string p0, "FF02::C"

    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/aL;->a(Ljava/lang/String;)V

    .line 102
    goto :goto_0

    .line 95
    :pswitch_7
    sput-boolean v0, Lcom/baidu/cyberplayer/utils/Q;->a:Z

    .line 97
    goto :goto_0

    .line 85
    :pswitch_8
    sput-boolean v0, Lcom/baidu/cyberplayer/utils/Q;->c:Z

    .line 87
    nop

    .line 124
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b()Lcom/baidu/cyberplayer/utils/cl;
    .locals 6

    .line 227
    nop

    .line 229
    const-string v0, "cyberlink.upnp.xml.parser"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/baidu/cyberplayer/utils/cp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/baidu/cyberplayer/utils/co;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    .line 235
    nop

    :goto_0
    if-ge v5, v3, :cond_1

    .line 236
    aget-object v0, v4, v5

    if-nez v0, :cond_0

    .line 237
    goto :goto_1

    .line 239
    :cond_0
    :try_start_0
    aget-object v0, v4, v5

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/utils/cl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    return-object v0

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v4, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as XMLParser due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->b(Ljava/lang/String;)V

    .line 235
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final b()Ljava/lang/String;
    .locals 11

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-long v2, v2

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v5, 0xffff

    and-long v7, v0, v5

    long-to-int v8, v7

    invoke-static {v8}, Lcom/baidu/cyberplayer/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v8, 0x20

    shr-long/2addr v0, v8

    const-wide/32 v9, 0xa000

    or-long/2addr v0, v9

    long-to-int v1, v0

    const v0, 0xffff

    and-int/2addr v1, v0

    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-long/2addr v5, v2

    long-to-int v4, v5

    invoke-static {v4}, Lcom/baidu/cyberplayer/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-long/2addr v2, v8

    const-wide/32 v4, 0xe000

    or-long/2addr v2, v4

    long-to-int v3, v2

    and-int/2addr v0, v3

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ag;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final b(I)V
    .locals 0

    .line 258
    sput p0, Lcom/baidu/cyberplayer/utils/ag;->a:I

    .line 259
    return-void
.end method

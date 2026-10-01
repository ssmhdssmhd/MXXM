.class public Lcom/baidu/cyberplayer/utils/aL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-string v0, "FF02::C"

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/aL;->a(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static final a(Ljava/lang/String;)I
    .locals 3

    .line 94
    nop

    .line 95
    const-string v0, "max-age"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 96
    if-ltz v0, :cond_1

    .line 97
    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 98
    if-gez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 101
    :cond_0
    :try_start_0
    const-string v2, "="

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/Exception;)V

    .line 108
    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/baidu/cyberplayer/utils/aL;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 0

    .line 62
    sput-object p0, Lcom/baidu/cyberplayer/utils/aL;->a:Ljava/lang/String;

    .line 63
    return-void
.end method

.class public Lcom/baidu/cyberplayer/utils/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/ah;->a(I)V

    .line 67
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/ah;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 0

    .line 37
    sparse-switch p0, :sswitch_data_0

    .line 45
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/N;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :sswitch_0
    const-string p0, "Invalid mime type"

    return-object p0

    .line 43
    :sswitch_1
    const-string p0, "Action Failed"

    return-object p0

    .line 42
    :sswitch_2
    const-string p0, "Precondition Failed"

    return-object p0

    .line 41
    :sswitch_3
    const-string p0, "Invalid Var"

    return-object p0

    .line 40
    :sswitch_4
    const-string p0, "Out of Sync"

    return-object p0

    .line 39
    :sswitch_5
    const-string p0, "Invalid Args"

    return-object p0

    .line 38
    :sswitch_6
    const-string p0, "Invalid Action"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_6
        0x192 -> :sswitch_5
        0x193 -> :sswitch_4
        0x194 -> :sswitch_3
        0x19c -> :sswitch_2
        0x1f5 -> :sswitch_1
        0x2ca -> :sswitch_0
    .end sparse-switch
.end method

.method public static final a(I)Z
    .locals 1

    .line 51
    const/16 v0, 0x191

    if-eq p0, v0, :cond_1

    const/16 v0, 0x192

    if-eq p0, v0, :cond_1

    const/16 v0, 0x193

    if-eq p0, v0, :cond_1

    const/16 v0, 0x194

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 53
    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/baidu/cyberplayer/utils/ah;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ah;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/baidu/cyberplayer/utils/ah;->a:I

    .line 82
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/ah;->a:Ljava/lang/String;

    .line 90
    return-void
.end method

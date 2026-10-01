.class public Lcom/baidu/cyberplayer/utils/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/cyberplayer/utils/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/cyberplayer/utils/x;
    .locals 1

    .line 19
    sget-object v0, Lcom/baidu/cyberplayer/utils/x;->a:Lcom/baidu/cyberplayer/utils/x;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/baidu/cyberplayer/utils/x;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/x;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/utils/x;->a:Lcom/baidu/cyberplayer/utils/x;

    .line 23
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/utils/x;->a:Lcom/baidu/cyberplayer/utils/x;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/baidu/cyberplayer/utils/w;
    .locals 0

    .line 33
    packed-switch p1, :pswitch_data_0

    .line 41
    const/4 p1, 0x0

    return-object p1

    .line 35
    :pswitch_0
    new-instance p1, Lcom/baidu/cyberplayer/utils/t;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/t;-><init>()V

    return-object p1

    .line 37
    :pswitch_1
    new-instance p1, Lcom/baidu/cyberplayer/utils/A;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/A;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

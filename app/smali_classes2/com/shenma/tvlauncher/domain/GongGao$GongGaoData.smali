.class public Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;
.super Ljava/lang/Object;
.source "GongGao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/domain/GongGao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GongGaoData"
.end annotation


# instance fields
.field private game_notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

.field private home_notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

.field private notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

.field private registerd:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

.field private roll_notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

.field final synthetic this$0:Lcom/shenma/tvlauncher/domain/GongGao;

.field private un_register:Lcom/shenma/tvlauncher/domain/GongGao$Notice;


# direct methods
.method public constructor <init>(Lcom/shenma/tvlauncher/domain/GongGao;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/domain/GongGao;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->this$0:Lcom/shenma/tvlauncher/domain/GongGao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_notice()Lcom/shenma/tvlauncher/domain/GongGao$Notice;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->game_notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    return-object v0
.end method

.method public getHome_notice()Lcom/shenma/tvlauncher/domain/GongGao$Notice;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->home_notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    return-object v0
.end method

.method public getNotice()Lcom/shenma/tvlauncher/domain/GongGao$Notice;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    return-object v0
.end method

.method public getRegisterd()Lcom/shenma/tvlauncher/domain/GongGao$Notice;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->registerd:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    return-object v0
.end method

.method public getRoll_notice()Lcom/shenma/tvlauncher/domain/GongGao$Notice;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->roll_notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    return-object v0
.end method

.method public getUn_register()Lcom/shenma/tvlauncher/domain/GongGao$Notice;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->un_register:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    return-object v0
.end method

.method public setGame_notice(Lcom/shenma/tvlauncher/domain/GongGao$Notice;)V
    .locals 0
    .param p1, "notice"    # Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 76
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->game_notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 77
    return-void
.end method

.method public setHome_notice(Lcom/shenma/tvlauncher/domain/GongGao$Notice;)V
    .locals 0
    .param p1, "notice"    # Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 68
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->home_notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 69
    return-void
.end method

.method public setNotice(Lcom/shenma/tvlauncher/domain/GongGao$Notice;)V
    .locals 0
    .param p1, "notice"    # Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 52
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 53
    return-void
.end method

.method public setRegisterd(Lcom/shenma/tvlauncher/domain/GongGao$Notice;)V
    .locals 0
    .param p1, "notice"    # Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 44
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->registerd:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 45
    return-void
.end method

.method public setRoll_notice(Lcom/shenma/tvlauncher/domain/GongGao$Notice;)V
    .locals 0
    .param p1, "notice"    # Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 60
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->roll_notice:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 61
    return-void
.end method

.method public setUn_register(Lcom/shenma/tvlauncher/domain/GongGao$Notice;)V
    .locals 0
    .param p1, "notice"    # Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 36
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;->un_register:Lcom/shenma/tvlauncher/domain/GongGao$Notice;

    .line 37
    return-void
.end method

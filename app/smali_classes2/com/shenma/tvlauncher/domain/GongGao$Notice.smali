.class public Lcom/shenma/tvlauncher/domain/GongGao$Notice;
.super Ljava/lang/Object;
.source "GongGao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/domain/GongGao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notice"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field final synthetic this$0:Lcom/shenma/tvlauncher/domain/GongGao;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


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

    .line 80
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$Notice;->this$0:Lcom/shenma/tvlauncher/domain/GongGao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao$Notice;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao$Notice;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao$Notice;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao$Notice;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$Notice;->content:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$Notice;->status:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$Notice;->title:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao$Notice;->type:Ljava/lang/String;

    .line 116
    return-void
.end method

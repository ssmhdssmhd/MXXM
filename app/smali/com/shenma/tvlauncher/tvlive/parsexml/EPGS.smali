.class public Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;
.super Ljava/lang/Object;
.source "EPGS.java"


# instance fields
.field private epgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->epgs:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public getEpgs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->epgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setEpgs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "epgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/shenma/tvlauncher/tvlive/parsexml/EPG;>;"
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/EPGS;->epgs:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

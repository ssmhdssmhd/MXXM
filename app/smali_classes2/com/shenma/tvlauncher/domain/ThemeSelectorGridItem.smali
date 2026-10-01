.class public Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;
.super Ljava/lang/Object;
.source "ThemeSelectorGridItem.java"


# instance fields
.field private imageRes:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "imageRes"    # I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;->title:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;->imageRes:I

    .line 10
    return-void
.end method


# virtual methods
.method public getImageRes()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;->imageRes:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/ThemeSelectorGridItem;->title:Ljava/lang/String;

    return-object v0
.end method

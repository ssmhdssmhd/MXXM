.class public Lcom/cicada/player/utils/ass/AssTextView;
.super Landroid/widget/TextView;
.source "AssTextView.java"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssTextView;->mContent:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssTextView;->mId:Ljava/lang/Long;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssTextView;->mContent:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssTextView;->mId:Ljava/lang/Long;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssTextView;->mContent:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssTextView;->mId:Ljava/lang/Long;

    .line 19
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssTextView;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleId()Ljava/lang/Long;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssTextView;->mId:Ljava/lang/Long;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssTextView;->mContent:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setSubtitleId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .line 33
    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssTextView;->mId:Ljava/lang/Long;

    .line 34
    return-void
.end method

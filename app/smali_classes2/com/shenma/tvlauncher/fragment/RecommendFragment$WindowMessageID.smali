.class Lcom/shenma/tvlauncher/fragment/RecommendFragment$WindowMessageID;
.super Ljava/lang/Object;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/fragment/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowMessageID"
.end annotation


# static fields
.field public static final RECOMMEND_EXPIRE:I = 0x2

.field public static final RECOMMEND_OFFSITE:I = 0x3

.field public static final RESPONSE_NO_SUCCESS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;


# direct methods
.method private constructor <init>(Lcom/shenma/tvlauncher/fragment/RecommendFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1292
    iput-object p1, p0, Lcom/shenma/tvlauncher/fragment/RecommendFragment$WindowMessageID;->this$0:Lcom/shenma/tvlauncher/fragment/RecommendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    return-void
.end method

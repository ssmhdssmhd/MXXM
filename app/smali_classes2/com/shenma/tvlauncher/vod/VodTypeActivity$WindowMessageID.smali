.class Lcom/shenma/tvlauncher/vod/VodTypeActivity$WindowMessageID;
.super Ljava/lang/Object;
.source "VodTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VodTypeActivity;
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;


# direct methods
.method private constructor <init>(Lcom/shenma/tvlauncher/vod/VodTypeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 777
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodTypeActivity$WindowMessageID;->this$0:Lcom/shenma/tvlauncher/vod/VodTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    return-void
.end method

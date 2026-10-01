.class Lcom/shenma/tvlauncher/HomeActivity$WindowMessageID;
.super Ljava/lang/Object;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowMessageID"
.end annotation


# static fields
.field private static final DOWNLOAD_ERROR:I = 0x10

.field private static final DOWNLOAD_SUCCESS:I = 0x12

.field public static final ERROR:I = 0x4

.field private static final GET_INFO_SUCCESS:I = 0x13

.field public static final REFLESH_TIME:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity;


# direct methods
.method private constructor <init>(Lcom/shenma/tvlauncher/HomeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2564
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity$WindowMessageID;->this$0:Lcom/shenma/tvlauncher/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2565
    return-void
.end method

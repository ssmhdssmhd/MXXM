.class Lcom/shenma/tvlauncher/HomeActivity2$WindowMessageID;
.super Ljava/lang/Object;
.source "HomeActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/HomeActivity2;
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
.field final synthetic this$0:Lcom/shenma/tvlauncher/HomeActivity2;


# direct methods
.method private constructor <init>(Lcom/shenma/tvlauncher/HomeActivity2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 945
    iput-object p1, p0, Lcom/shenma/tvlauncher/HomeActivity2$WindowMessageID;->this$0:Lcom/shenma/tvlauncher/HomeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    return-void
.end method

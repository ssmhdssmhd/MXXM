.class Lcom/shenma/tvlauncher/tvback/TVBackActivity$WindowMessageID;
.super Ljava/lang/Object;
.source "TVBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/tvback/TVBackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowMessageID"
.end annotation


# static fields
.field public static final CHANNEL:I = 0x2

.field public static final DATE:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final HIDE_CONTROLER:I = 0x8

.field public static final PLAY:I = 0x6

.field public static final PROGRAM:I = 0x3

.field public static final PROGRESSBAR_GONE:I = 0x10

.field public static final PROGRESSBAR_PROGRESS_RESET:I = 0x11

.field public static final PROGRESSBAR_VISIBLE:I = 0x9

.field public static final PROGRESS_CHANGED:I = 0x7

.field public static final REFRESH:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;


# direct methods
.method private constructor <init>(Lcom/shenma/tvlauncher/tvback/TVBackActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1617
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/TVBackActivity$WindowMessageID;->this$0:Lcom/shenma/tvlauncher/tvback/TVBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

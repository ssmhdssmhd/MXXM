.class Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$WindowMessageID;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowMessageID"
.end annotation


# static fields
.field public static final COLSE_SHOW_TV:I = 0x12

.field public static final DATA_BASE64_PREPARE_OK:I = 0x9

.field public static final DATA_PREPARE_OK:I = 0x8

.field public static final ERROR:I = 0x3

.field public static final EVENT_PLAY:I = 0x4

.field public static final HIDE_CONTROLER:I = 0x7

.field public static final HIDE_MENU:I = 0x16

.field public static final HIDE_PROGRESS_TIME:I = 0x15

.field public static final NET_FAILED:I = 0x2

.field public static final NOTICE:I = 0x24

.field public static final NOTICE_GONE:I = 0x25

.field public static final PLAY_ERROR:I = 0x19

.field public static final PREPARE_VOD_DATA:I = 0x10

.field public static final PROGRESSBAR_PROGRESS_RESET:I = 0x13

.field public static final PROGRESS_CHANGED:I = 0x6

.field public static final RESET_MOVIE_TIME:I = 0x18

.field public static final SELECT_SCALES:I = 0x14

.field public static final SHOW_TV:I = 0x11

.field public static final START_LOGO:I = 0x27

.field public static final START_NOTICE_GONE:I = 0x26

.field public static final START_SPEED:I = 0x17

.field public static final SUCCESS:I = 0x1

.field public static final SWITCH_CODE:I = 0x20

.field public static final Sniffing:I = 0x28

.field public static final Try:I = 0x23

.field public static final UI_EVENT_UPDATE_CURRPOSITION:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 4835
    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity$WindowMessageID;->this$0:Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

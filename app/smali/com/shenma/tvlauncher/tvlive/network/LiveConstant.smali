.class public Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;
.super Ljava/lang/Object;
.source "LiveConstant.java"


# static fields
.field public static final APPLICATION_EXCEPTION:I = 0x6

.field public static final CHANNEL_CLASS:I = 0x0

.field public static final CHANNEL_TYPE:I = 0x1

.field public static final CLOSE_MUILT:Ljava/lang/String; = "close"

.field public static final CONNECT_FAIL:I = 0x3ec

.field public static final CONNECT_SUCC:I = 0x3eb

.field public static final CONNECT_SUCCESS:Ljava/lang/String; = "success"

.field public static final CONNECT_TIME:I = 0x3ea

.field public static final DISAPPEAR:I = 0x9

.field public static final DOWNLOAD_ENTER_XML:I = 0xb

.field public static final DOWNLOAD_IMG_XML:I = 0xc

.field public static final DOWNLOAD_NEWS_XML:I = 0xd

.field public static final DOWNLOAD_PTOP_XML:I = 0x14

.field public static final DOWNLOAD_XML_DONE:I = 0x4

.field public static final DO_NOT_CONNECT_NET:I = 0x0

.field public static final EPG:Ljava/lang/String; = "http://aps.lsott.com/egp/"

.field public static final EPG_VIEW:I = 0x11

.field public static final FAVORITE:I = 0x66

.field public static final FAVORITE_SIZE:I = 0x1

.field public static final GENERAL_TV:Ljava/lang/String; = "http://wephd.live.cctv1949.com"

.field public static final HIDE_VIEW:I = 0x8

.field public static final KILL_PTOP:I = 0x65

.field public static final LETV:Ljava/lang/String; = "letv0http://live.gslb.letv.com/gslb"

.field public static final LIVE_KEY1:Ljava/lang/String; = "hdplive"

.field public static final LIVE_KEY3:Ljava/lang/String; = "6r7b4e7d8bktfu8e"

.field public static final LIVE_TIME:Ljava/lang/String; = "http://api.letv.com/time"

.field public static final LOGO:Ljava/lang/String; = "logo"

.field public static MAC:Ljava/lang/String; = null

.field public static final MINU_NUTE:I = 0xea60

.field public static final NEWS:Ljava/lang/String; = "news"

.field public static final PAUSE_NEWS:I = 0x10

.field public static final PLAYER_VIDEO:I = 0x5

.field public static final PLAY_NEXT:I = 0xf

.field public static final PLUGS_END:I = 0x3ed

.field public static final PLUGS_START:I = 0x3ee

.field public static final PORT:I = 0x425e

.field public static final PTOPCOLLECTION_SIZE:I = 0x1

.field public static PTOP_SERVER:Ljava/lang/String; = null

.field public static final REPLAY:I = 0x12

.field public static final SELECT_CHANNE:I = 0xa

.field public static SO_NAME:Ljava/lang/String; = null

.field public static final START_NEWS:I = 0xe

.field public static final START_PLAY:I = 0x3e8

.field public static final START_PTOP:I = 0x64

.field public static final START_THREAD:I = 0x3e9

.field public static final SWICH_LINE:I = 0x7

.field public static final TVLINK_TYPE:I = 0x2

.field public static final ZBLIVE:Ljava/lang/String; = "zblive"

.field public static liveDatas:Lcom/shenma/tvlauncher/tvlive/parsexml/NetMediaCollection;

.field public static selectTotle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;->selectTotle:I

    .line 59
    const-string v0, "libutp"

    sput-object v0, Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;->SO_NAME:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/shenma/tvlauncher/tvlive/network/LiveConstant;->PTOP_SERVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

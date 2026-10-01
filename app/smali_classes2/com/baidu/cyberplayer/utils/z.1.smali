.class public Lcom/baidu/cyberplayer/utils/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GB-2312"

    aput-object v2, v0, v1

    .line 58
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "GBK"

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "GB18030"

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "HZ"

    aput-object v2, v0, v1

    .line 61
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "ISO2022CN-GB"

    aput-object v2, v0, v1

    .line 62
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "Big5"

    aput-object v2, v0, v1

    .line 63
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "CNS11643"

    aput-object v2, v0, v1

    .line 64
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "ISO2022CN-CNS"

    aput-object v2, v0, v1

    .line 65
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "ISO2022 CN"

    aput-object v2, v0, v1

    .line 66
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    .line 67
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "UTF-8 (Trad)"

    aput-object v2, v0, v1

    .line 68
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "UTF-8 (Simp)"

    aput-object v2, v0, v1

    .line 70
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    .line 71
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "UTF-16BE"

    aput-object v2, v0, v1

    .line 72
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "Unicode (Trad)"

    aput-object v2, v0, v1

    .line 73
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "Unicode (Simp)"

    aput-object v2, v0, v1

    .line 74
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "EUC-KR"

    aput-object v2, v0, v1

    .line 75
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "CP949"

    aput-object v2, v0, v1

    .line 76
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "ISO 2022 KR"

    aput-object v2, v0, v1

    .line 77
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "Johab"

    aput-object v2, v0, v1

    .line 78
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "Shift-JIS"

    aput-object v2, v0, v1

    .line 79
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "EUC-JP"

    aput-object v2, v0, v1

    .line 80
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v2, "ISO 2022 JP"

    aput-object v2, v0, v1

    .line 81
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x17

    const-string v2, "ASCII"

    aput-object v2, v0, v1

    .line 82
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    const/16 v1, 0x18

    const-string v2, "OTHER"

    aput-object v2, v0, v1

    .line 83
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 89
    if-ltz p0, :cond_0

    const/16 v0, 0x19

    if-ge p0, v0, :cond_0

    .line 90
    sget-object v0, Lcom/baidu/cyberplayer/utils/z;->a:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 92
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

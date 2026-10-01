.class Lnet/sunniwell/android/httpserver/param/HttpCodecUtil;
.super Ljava/lang/Object;
.source "HttpCodecUtil.java"


# static fields
.field static final COLON:B = 0x3at

.field static final COMMA:B = 0x2ct

.field static final CR:B = 0xdt

.field static final CRLF:[B

.field static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field static final DOUBLE_QUOTE:B = 0x22t

.field static final EQUALS:B = 0x3dt

.field static final HT:B = 0x9t

.field static final LF:B = 0xat

.field static final SEMICOLON:B = 0x3bt

.field static final SP:B = 0x20t


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/sunniwell/android/httpserver/param/HttpCodecUtil;->CRLF:[B

    .line 54
    sget-object v0, Lnet/sunniwell/android/httpserver/param/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lnet/sunniwell/android/httpserver/param/HttpCodecUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

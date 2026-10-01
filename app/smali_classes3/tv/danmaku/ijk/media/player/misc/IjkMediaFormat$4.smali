.class Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$4;
.super Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;
.source "IjkMediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V
    .locals 1
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$4;->this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat-IA;)V

    return-void
.end method


# virtual methods
.method protected doFormat(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 7
    .param p1, "mediaFormat"    # Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    .line 80
    const-string v0, "codec_profile_id"

    invoke-virtual {p1, v0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "profileIndex":I
    sparse-switch v0, :sswitch_data_0

    .line 123
    const/4 v1, 0x0

    return-object v1

    .line 117
    :sswitch_0
    const-string v1, "High 4:4:4 Intra"

    .line 118
    .local v1, "profile":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_1
    const-string v1, "High 4:2:2 Intra"

    .line 109
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_2
    const-string v1, "High 10 Intra"

    .line 103
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_3
    const-string v1, "Constrained Baseline"

    .line 88
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_4
    const-string v1, "High 4:4:4 Predictive"

    .line 115
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_5
    const-string v1, "High 4:4:4"

    .line 112
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_6
    const-string v1, "High 4:2:2"

    .line 106
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_7
    const-string v1, "High 10"

    .line 100
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_8
    const-string v1, "High"

    .line 97
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_9
    const-string v1, "Extended"

    .line 94
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_a
    const-string v1, "Main"

    .line 91
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_b
    const-string v1, "Baseline"

    .line 85
    .restart local v1    # "profile":Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v1    # "profile":Ljava/lang/String;
    :sswitch_c
    const-string v1, "CAVLC 4:4:4"

    .line 121
    .restart local v1    # "profile":Ljava/lang/String;
    nop

    .line 126
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v3, "codec_name"

    invoke-virtual {p1, v3}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "codecName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "h264"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    const-string v4, "codec_level"

    invoke-virtual {p1, v4}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 132
    .local v4, "level":I
    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 135
    :cond_0
    const-string v6, " Profile Level "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    div-int/lit8 v6, v4, 0xa

    rem-int/2addr v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    rem-int/lit8 v5, v4, 0xa

    if-eqz v5, :cond_1

    .line 138
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    rem-int/lit8 v5, v4, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .end local v4    # "level":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_c
        0x42 -> :sswitch_b
        0x4d -> :sswitch_a
        0x58 -> :sswitch_9
        0x64 -> :sswitch_8
        0x6e -> :sswitch_7
        0x7a -> :sswitch_6
        0x90 -> :sswitch_5
        0xf4 -> :sswitch_4
        0x242 -> :sswitch_3
        0x86e -> :sswitch_2
        0x87a -> :sswitch_1
        0x8f4 -> :sswitch_0
    .end sparse-switch
.end method

.class public interface abstract Lcom/baidu/cyberplayer/dlna/DLNAActionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_AUTH_ERROR:I = -0x4

.field public static final ACTION_CAN_NOT_BROWSE_ALL:I = -0x6

.field public static final ACTION_FAILED:I = 0x1f5

.field public static final ACTION_FAILURE:I = -0x1

.field public static final ACTION_INVALID_RENDER:I = -0x2

.field public static final ACTION_INVALID_SERVER:I = -0x5

.field public static final ACTION_NULL_POINTER:I = -0x3

.field public static final ACTION_SUCCESS:I = 0x0

.field public static final BAD_REQUEST:I = 0x190

.field public static final CONTINUE:I = 0x64

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final INVALID_ACTION:I = 0x191

.field public static final INVALID_ARGS:I = 0x192

.field public static final INVALID_MIME_TYPE:I = 0x2ca

.field public static final INVALID_RANGE:I = 0x1a0

.field public static final INVALID_VAR:I = 0x194

.field public static final OK:I = 0xc8

.field public static final OUT_OF_SYNC:I = 0x193

.field public static final PARTIAL_CONTENT:I = 0xce

.field public static final PRECONDITION_FAILED:I = 0x19c


# virtual methods
.method public abstract onBrowse(ZLjava/util/List;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/baidu/cyberplayer/dlna/ContentItem;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onBrowseFileItems(ZLjava/util/List;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/baidu/cyberplayer/dlna/FileItem;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDisableDLNA(ZILjava/lang/String;)V
.end method

.method public abstract onEnableDLNA(ZILjava/lang/String;)V
.end method

.method public abstract onGetMute(ZZILjava/lang/String;)V
.end method

.method public abstract onGetSupportedProtocols(ZLjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onGetVolume(ZIILjava/lang/String;)V
.end method

.method public abstract onPause(ZILjava/lang/String;)V
.end method

.method public abstract onPlay(ZILjava/lang/String;)V
.end method

.method public abstract onSeek(ZILjava/lang/String;)V
.end method

.method public abstract onSelectRenderDevice(ZILjava/lang/String;)V
.end method

.method public abstract onSelectServerDevice(ZILjava/lang/String;)V
.end method

.method public abstract onSetMediaMetaData(ZILjava/lang/String;)V
.end method

.method public abstract onSetMediaURI(ZILjava/lang/String;)V
.end method

.method public abstract onSetMute(ZILjava/lang/String;)V
.end method

.method public abstract onSetSubSwitch(ZILjava/lang/String;)V
.end method

.method public abstract onSetVolume(ZILjava/lang/String;)V
.end method

.method public abstract onStop(ZILjava/lang/String;)V
.end method

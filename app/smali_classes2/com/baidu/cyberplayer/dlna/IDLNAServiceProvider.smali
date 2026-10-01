.class public interface abstract Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseFileItemsCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetSupportedProtocolsCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMuteCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetMuteCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetVolumeCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetSubSwitchCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetVolumeCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISeekCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IStopCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPauseCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPlayCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaMetaDataCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaURICallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectRendererDeviceCallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;,
        Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;
    }
.end annotation


# virtual methods
.method public abstract addDeviceChangeListener(Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;)Z
.end method

.method public abstract addEventListener(Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;)Z
.end method

.method public abstract browser(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseCallBack;)V
.end method

.method public abstract browserFileItems(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseFileItemsCallBack;)V
.end method

.method public abstract disableDLNA(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;)V
.end method

.method public abstract enableDLNA(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;)V
.end method

.method public abstract getDeviceIP(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeviceMap(Lcom/baidu/cyberplayer/dlna/DLNADeviceType;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/cyberplayer/dlna/DLNADeviceType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaDuration()Ljava/lang/String;
.end method

.method public abstract getMediaPosition()Ljava/lang/String;
.end method

.method public abstract getMuteStat(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetMuteCallBack;)V
.end method

.method public abstract getRenderState()Ljava/lang/String;
.end method

.method public abstract getSelectedRenderId()Ljava/lang/String;
.end method

.method public abstract getSelectedRenderName()Ljava/lang/String;
.end method

.method public abstract getSelectedServerId()Ljava/lang/String;
.end method

.method public abstract getSelectedServerName()Ljava/lang/String;
.end method

.method public abstract getSupportedProtocols(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetSupportedProtocolsCallBack;)V
.end method

.method public abstract getTrackName()Ljava/lang/String;
.end method

.method public abstract getVolume(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetVolumeCallBack;)V
.end method

.method public abstract initialize(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract pause(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPauseCallBack;)V
.end method

.method public abstract play(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPlayCallBack;)V
.end method

.method public abstract seek(Ljava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISeekCallBack;)V
.end method

.method public abstract selectRenderDevice(Ljava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectRendererDeviceCallBack;)V
.end method

.method public abstract selectServerDevice(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;)V
.end method

.method public abstract setMediaMetaData(Lcom/baidu/cyberplayer/dlna/AVMetaData;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaMetaDataCallBack;)V
.end method

.method public abstract setMediaURI(Ljava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaURICallBack;)V
.end method

.method public abstract setMuteStat(ZLcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMuteCallBack;)V
.end method

.method public abstract setSubSwitch(ZLcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetSubSwitchCallBack;)V
.end method

.method public abstract setVolume(ILcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetVolumeCallBack;)V
.end method

.method public abstract stop(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IStopCallBack;)V
.end method

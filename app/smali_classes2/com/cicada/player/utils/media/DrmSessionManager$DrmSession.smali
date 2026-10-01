.class Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/media/DrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmSession"
.end annotation


# instance fields
.field public drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

.field private hasProvideProvision:Z

.field public mediaDrm:Landroid/media/MediaDrm;

.field public requestHandler:Landroid/os/Handler;

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field public sessionId:[B

.field public state:I

.field final synthetic this$0:Lcom/cicada/player/utils/media/DrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/cicada/player/utils/media/DrmSessionManager;Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;)V
    .locals 2
    .param p2, "info"    # Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 91
    iput-object p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 83
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 84
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    .line 86
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    iput v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    .line 88
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 89
    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->hasProvideProvision:Z

    .line 92
    iput-object p2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmRequestHanderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 95
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;

    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$1;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;Landroid/os/Looper;Lcom/cicada/player/utils/media/DrmSessionManager;)V

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;

    .line 81
    invoke-direct {p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestProvision()V

    return-void
.end method

.method static synthetic access$100(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestKey()V

    return-void
.end method

.method static synthetic access$300(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sendRequest(I[B)V

    return-void
.end method

.method private changeState(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "errorCode"    # I

    .line 254
    iput p1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    .line 255
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-static {v1}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_changeState(JII)V

    .line 257
    return-void
.end method

.method private requestKey()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 195
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestKey state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    if-ne v0, v1, :cond_0

    .line 197
    return-void

    .line 201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    iget-object v0, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    iget-object v1, v1, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyUrl:Ljava/lang/String;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    move-object v3, v0

    .line 202
    .local v3, "initData":[B
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    iget-object v4, v0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->mime:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v0

    .line 204
    .local v0, "keyRequest":Landroid/media/MediaDrm$KeyRequest;
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    iget-object v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-static {v2}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v6

    invoke-virtual {v1, v4, v5, v2, v6}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_requestKey(JLjava/lang/String;[B)[B

    move-result-object v1

    .line 206
    .local v1, "requestData":[B
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestKey result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-nez v1, :cond_1

    .line 209
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestKey fail: data = null , url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget v2, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v4, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_KEY_RESPONSE_NULL:I

    invoke-direct {p0, v2, v4}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 211
    return-void

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v4, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    invoke-virtual {v2, v4, v1}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    .line 215
    sget v2, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_OPENED:I

    sget v4, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_NONE:I

    invoke-direct {p0, v2, v4}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0    # "keyRequest":Landroid/media/MediaDrm$KeyRequest;
    .end local v1    # "requestData":[B
    .end local v3    # "initData":[B
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestKey fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v2, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_DENIED_BY_SERVER:I

    invoke-direct {p0, v1, v2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private requestProvision()V
    .locals 6

    .line 226
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestProvision  state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-boolean v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->hasProvideProvision:Z

    if-eqz v0, :cond_0

    .line 228
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 232
    .local v0, "request":Landroid/media/MediaDrm$ProvisionRequest;
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    iget-object v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-static {v2}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_requestProvision(JLjava/lang/String;[B)[B

    move-result-object v1

    .line 233
    .local v1, "provisionData":[B
    if-nez v1, :cond_1

    .line 234
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestProvision fail: data = null , url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget v2, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v3, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_RESPONSE_NULL:I

    invoke-direct {p0, v2, v3}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 236
    return-void

    .line 239
    :cond_1
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestProvision : data =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2, v1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 243
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->hasProvideProvision:Z

    .line 244
    iget v2, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->state:I

    sget v3, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    if-ne v2, v3, :cond_2

    .line 245
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->prepare(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_2
    goto :goto_0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestProvision fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget v3, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v4, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_FAIL:I

    invoke-direct {p0, v3, v4}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 251
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private sendRequest(I[B)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "sessionId"    # [B

    .line 165
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method


# virtual methods
.method public isForceInsecureDecoder()Z
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 263
    const-string v2, "securityLevel"

    invoke-virtual {v0, v2}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "L3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    .line 265
    :cond_1
    return v1
.end method

.method public prepare(Z)Z
    .locals 7
    .param p1, "allowProvisioning"    # Z

    .line 118
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    const-string v1, " prepare fail : "

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 120
    :try_start_0
    const-string/jumbo v0, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    iget-object v3, v3, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Landroid/media/MediaDrm;

    sget-object v3, Lcom/cicada/player/utils/media/DrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-direct {v0, v3}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    nop

    .line 133
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    new-instance v3, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;

    invoke-direct {v3, p0}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession$2;-><init>(Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;)V

    invoke-virtual {v0, v3}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    goto :goto_0

    .line 123
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " prepare fail : not support format :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->drmInfo:Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;

    iget-object v4, v4, Lcom/cicada/player/utils/media/DrmSessionManager$DrmInfo;->keyFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v3, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_UNSUPPORT_SCHEME:I

    invoke-direct {p0, v0, v3}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V
    :try_end_1
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    return v2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/media/UnsupportedSchemeException;
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/UnsupportedSchemeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v3, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_UNSUPPORT_SCHEME:I

    invoke-direct {p0, v1, v3}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 130
    return v2

    .line 143
    .end local v0    # "e":Landroid/media/UnsupportedSchemeException;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v3}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v3

    iput-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    .line 144
    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    iget-object v4, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->this$0:Lcom/cicada/player/utils/media/DrmSessionManager;

    invoke-static {v4}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$400(Lcom/cicada/player/utils/media/DrmSessionManager;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    invoke-virtual {v3, v4, v5, v6}, Lcom/cicada/player/utils/media/DrmSessionManager;->native_updateSessionId(J[B)V

    .line 145
    sget v3, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_IDLE:I

    sget v4, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_NONE:I

    invoke-direct {p0, v3, v4}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 146
    iget-object v3, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sendRequest(I[B)V
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    nop

    .line 161
    return v0

    .line 155
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v3, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_RESOURCE_BUSY:I

    invoke-direct {p0, v1, v3}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 158
    return v2

    .line 147
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 148
    .local v1, "e":Landroid/media/NotProvisionedException;
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " prepare NotProvisionedException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/NotProvisionedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz p1, :cond_2

    .line 150
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sendRequest(I[B)V

    goto :goto_1

    .line 152
    :cond_2
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v3, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_PROVISION_FAIL:I

    invoke-direct {p0, v0, v3}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 154
    :goto_1
    return v2
.end method

.method public release()Z
    .locals 4

    .line 171
    sget v0, Lcom/cicada/player/utils/media/DrmSessionManager;->SESSION_STATE_ERROR:I

    sget v1, Lcom/cicada/player/utils/media/DrmSessionManager;->ERROR_CODE_RELEASED:I

    invoke-direct {p0, v0, v1}, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->changeState(II)V

    .line 173
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 175
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    iget-object v1, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->sessionId:[B

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " closeSession fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    goto :goto_1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/cicada/player/utils/media/DrmSessionManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " release fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/media/DrmSessionManager$DrmSession;->mediaDrm:Landroid/media/MediaDrm;

    .line 191
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

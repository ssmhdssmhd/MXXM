.class public Lorg/apache/commons/fileupload/SWFileUploadBase$SizeLimitExceededException;
.super Lorg/apache/commons/fileupload/SWFileUploadBase$SizeException;
.source "SWFileUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/SWFileUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeLimitExceededException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2258963911ebc0dcL


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "actual"    # J
    .param p4, "permitted"    # J

    .line 1030
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/fileupload/SWFileUploadBase$SizeException;-><init>(Ljava/lang/String;JJ)V

    .line 1031
    return-void
.end method

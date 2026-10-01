.class public Lorg/apache/commons/fileupload/SWFileUploadBase$IOFileUploadException;
.super Lorg/apache/commons/fileupload/FileUploadException;
.source "SWFileUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/SWFileUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IOFileUploadException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x184886c056056f55L


# instance fields
.field private final cause:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 0
    .param p1, "pMsg"    # Ljava/lang/String;
    .param p2, "pException"    # Ljava/io/IOException;

    .line 940
    invoke-direct {p0, p1}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;)V

    .line 941
    iput-object p2, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$IOFileUploadException;->cause:Ljava/io/IOException;

    .line 942
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 950
    iget-object v0, p0, Lorg/apache/commons/fileupload/SWFileUploadBase$IOFileUploadException;->cause:Ljava/io/IOException;

    return-object v0
.end method

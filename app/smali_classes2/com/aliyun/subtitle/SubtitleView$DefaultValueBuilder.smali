.class public Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
.super Ljava/lang/Object;
.source "SubtitleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/subtitle/SubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultValueBuilder"
.end annotation


# instance fields
.field mLocation:I

.field mTextColor:Ljava/lang/String;

.field mTextSize:I

.field mTextSizePercent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/16 v0, 0x18

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mLocation:I

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSize:I

    .line 151
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSizePercent:F

    .line 152
    const-string v0, "#FFFFFFFF"

    iput-object v0, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setColor(Ljava/lang/String;)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextColor:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setLocation(I)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0
    .param p1, "location"    # I

    .line 155
    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mLocation:I

    .line 156
    return-object p0
.end method

.method public setSize(I)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0
    .param p1, "textSize"    # I

    .line 160
    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSize:I

    .line 161
    return-object p0
.end method

.method public setSizePercent(F)Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;
    .locals 0
    .param p1, "percent"    # F

    .line 165
    iput p1, p0, Lcom/aliyun/subtitle/SubtitleView$DefaultValueBuilder;->mTextSizePercent:F

    .line 166
    return-object p0
.end method

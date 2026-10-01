.class Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$2;
.super Ljava/lang/Object;
.source "ThemeSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;->onBindViewHolder(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

    iput p2, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

    iget-object v0, v0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;->onItemClickListener:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$2;->this$0:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;

    iget-object v0, v0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter;->onItemClickListener:Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$OnItemClickListener;

    iget v1, p0, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Lcom/shenma/tvlauncher/ThemeSelectorActivity$GridAdapter$OnItemClickListener;->onItemClick(I)V

    .line 262
    :cond_0
    return-void
.end method

.class Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$1;
.super Ljava/lang/Object;
.source "ReturnPointSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->getReturnPotinInfo(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

.field final synthetic val$frame:I


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;I)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$1;->val$frame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 197
    iget v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$1;->val$frame:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/ReturnPointSettingFragment;I)V

    :cond_2
    :goto_0
    return-void
.end method

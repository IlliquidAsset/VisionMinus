.class Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$1;
.super Lcom/powervision/gcs/utils/SimpeTextWather;
.source "ConnectRemotePairActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    invoke-direct {p0}, Lcom/powervision/gcs/utils/SimpeTextWather;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/powervision/gcs/utils/PsnUtils;->isW4Psn(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->rl_finish:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    sget v1, Lcom/powervision/gcs/R$drawable;->gcs_firmware_update_sure_bg:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->rl_finish:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    sget v1, Lcom/powervision/gcs/R$drawable;->gcs_firmware_update_sure_bg_disable:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

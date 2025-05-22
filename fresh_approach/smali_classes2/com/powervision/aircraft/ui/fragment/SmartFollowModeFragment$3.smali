.class Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;
.super Ljava/lang/Object;
.source "SmartFollowModeFragment.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSetGetIntParamDate$0$SmartFollowModeFragment$3(I)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;I)V

    return-void
.end method

.method public onSetGetFloatParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public onSetGetIntParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MPC_AVOI_ON"

    .line 363
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "DOWNLOAD"

    .line 364
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SUCCESS"

    .line 365
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 366
    invoke-static {p4, p1}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 367
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowModeFragment$3$HyBoR4_KVgOJPj1x5o-7NzAFq2k;

    invoke-direct {p2, p0, p4}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowModeFragment$3$HyBoR4_KVgOJPj1x5o-7NzAFq2k;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;I)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment$3;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/SmartFollowModeFragment;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSetGetLongParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

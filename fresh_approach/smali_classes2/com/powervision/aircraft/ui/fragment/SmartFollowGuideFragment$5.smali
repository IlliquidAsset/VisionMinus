.class Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;
.super Ljava/lang/Object;
.source "SmartFollowGuideFragment.java"

# interfaces
.implements Lcom/powervision/sdk/callback/Ap03SetGetParamResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSetGetIntParamDate$0$SmartFollowGuideFragment$5(I)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->access$500(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;I)V

    return-void
.end method

.method public onSetGetFloatParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public onSetGetIntParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "followType != NORMAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    invoke-static {v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "helin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->access$400(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)I

    move-result v0

    if-eq v0, v2, :cond_1

    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->access$402(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;I)I

    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 344
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetGetIntParamDate type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MPC_AVOI_ON"

    .line 345
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "DOWNLOAD"

    .line 346
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "SUCCESS"

    .line 347
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    .line 348
    invoke-static {p4, p1}, Lcom/powervision/camera/utils/CameraUtil;->isOpen(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 349
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowGuideFragment$5$IPqnFrSVrkbqDgxSAURUD2Wwn8M;

    invoke-direct {p2, p0, p4}, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowGuideFragment$5$IPqnFrSVrkbqDgxSAURUD2Wwn8M;-><init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;I)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 351
    :cond_3
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onSetGetLongParamDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.class Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;
.super Ljava/lang/Object;
.source "AirCraftControlActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->requestBasicPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/tbruyelle/rxpermissions2/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

.field final synthetic val$deniedSb:Ljava/lang/StringBuilder;

.field final synthetic val$rationaleSb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onComplete$0$AirCraftControlActivity$1(Landroid/view/View;)V
    .locals 0

    .line 525
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/base/utils/AppUtils;->toSelfSetting(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$onComplete$1$AirCraftControlActivity$1(Landroid/view/View;)V
    .locals 0

    .line 525
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onComplete$2$AirCraftControlActivity$1(Landroid/view/View;)V
    .locals 0

    .line 532
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$300(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    return-void
.end method

.method public synthetic lambda$onComplete$3$AirCraftControlActivity$1(Landroid/view/View;)V
    .locals 0

    .line 532
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->finish()V

    return-void
.end method

.method public onComplete()V
    .locals 9

    const-string v0, "permission  onComplete"

    .line 515
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$100(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto/16 :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v5, Lcom/powervision/aircraft/R$string;->AP03_Msg_139_5:I

    .line 521
    invoke-virtual {v4, v5}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$deniedSb:Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 521
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v2, Lcom/powervision/aircraft/R$string;->APP_Mine_15:I

    .line 523
    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Activation_9:I

    .line 524
    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$1$6cDi0-kKhJf2J1pwFu8TdsPXycU;

    invoke-direct {v7, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$1$6cDi0-kKhJf2J1pwFu8TdsPXycU;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;)V

    new-instance v8, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$1$CbnXY9157dxtyZM1JrqLSDOgawM;

    invoke-direct {v8, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$1$CbnXY9157dxtyZM1JrqLSDOgawM;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;)V

    move-object v2, v0

    .line 520
    invoke-static/range {v2 .. v8}, Lcom/powervision/base/utils/DialogUtils;->returnCustomDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$202(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v5, Lcom/powervision/aircraft/R$string;->AP03_Msg_139_5:I

    .line 528
    invoke-virtual {v4, v5}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 528
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v2, Lcom/powervision/aircraft/R$string;->APP_Mine_15:I

    .line 530
    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    sget v2, Lcom/powervision/aircraft/R$string;->AP03_Activation_9:I

    .line 531
    invoke-virtual {v1, v2}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$1$WOV-LH0S9RmmZdIZ5VJ4MDST02o;

    invoke-direct {v7, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$1$WOV-LH0S9RmmZdIZ5VJ4MDST02o;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;)V

    new-instance v8, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$1$rtxFzdcVQeF7AYRfyNq48hWXzSA;

    invoke-direct {v8, p0}, Lcom/powervision/aircraft/ui/activity/-$$Lambda$AirCraftControlActivity$1$rtxFzdcVQeF7AYRfyNq48hWXzSA;-><init>(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;)V

    move-object v2, v0

    .line 527
    invoke-static/range {v2 .. v8}, Lcom/powervision/base/utils/DialogUtils;->returnCustomDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$202(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;Landroidx/appcompat/app/AlertDialog;)Landroidx/appcompat/app/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "permission  onError"

    .line 510
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Lcom/tbruyelle/rxpermissions2/Permission;)V
    .locals 4

    .line 484
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    const-string v1, "AirCraftCo"

    if-eqz v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is granted"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->this$0:Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;->access$000(Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity;)V

    goto/16 :goto_0

    .line 488
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    const-string v2, "\u3001"

    if-eqz v0, :cond_2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is denied. More info should be "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "provided."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 499
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is denied."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$deniedSb:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object p1, p0, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 476
    check-cast p1, Lcom/tbruyelle/rxpermissions2/Permission;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/activity/AirCraftControlActivity$1;->onNext(Lcom/tbruyelle/rxpermissions2/Permission;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

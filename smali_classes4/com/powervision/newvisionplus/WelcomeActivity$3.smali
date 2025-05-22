.class Lcom/powervision/newvisionplus/WelcomeActivity$3;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/newvisionplus/WelcomeActivity;->requestBasicPermission()V
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
.field final synthetic this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

.field final synthetic val$deniedSb:Ljava/lang/StringBuilder;

.field final synthetic val$rationaleSb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/powervision/newvisionplus/WelcomeActivity;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    iput-object p2, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$rationaleSb:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onComplete$0$WelcomeActivity$3(Landroid/view/View;)V
    .locals 0

    .line 377
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {p1}, Lcom/powervision/base/utils/AppUtils;->toSelfSetting(Landroid/content/Context;)V

    .line 378
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onComplete$1$WelcomeActivity$3(Landroid/view/View;)V
    .locals 0

    .line 379
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onComplete$2$WelcomeActivity$3(Landroid/view/View;)V
    .locals 0

    .line 383
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$1300(Lcom/powervision/newvisionplus/WelcomeActivity;)V

    return-void
.end method

.method public synthetic lambda$onComplete$3$WelcomeActivity$3(Landroid/view/View;)V
    .locals 0

    .line 383
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->finish()V

    return-void
.end method

.method public onComplete()V
    .locals 12

    const-string v0, "welcomeTest"

    const-string v1, " permission complete "

    .line 368
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {v0}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$1100(Lcom/powervision/newvisionplus/WelcomeActivity;)V

    .line 371
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-static {v0}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$1200(Lcom/powervision/newvisionplus/WelcomeActivity;)V

    goto/16 :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f12008b

    const v2, 0x7f120750

    const/4 v3, 0x0

    const v4, 0x7f120524

    if-nez v0, :cond_1

    .line 374
    iget-object v5, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {v7, v4}, Lcom/powervision/newvisionplus/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$deniedSb:Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 374
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    .line 375
    invoke-virtual {v0, v2}, Lcom/powervision/newvisionplus/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {v0, v1}, Lcom/powervision/newvisionplus/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/powervision/newvisionplus/-$$Lambda$WelcomeActivity$3$TpjC8UUy0PsoWqyvqPv-iaXblMM;

    invoke-direct {v10, p0}, Lcom/powervision/newvisionplus/-$$Lambda$WelcomeActivity$3$TpjC8UUy0PsoWqyvqPv-iaXblMM;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity$3;)V

    new-instance v11, Lcom/powervision/newvisionplus/-$$Lambda$WelcomeActivity$3$6yte-131IwzYjZGZoThiin2lSdM;

    invoke-direct {v11, p0}, Lcom/powervision/newvisionplus/-$$Lambda$WelcomeActivity$3$6yte-131IwzYjZGZoThiin2lSdM;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity$3;)V

    .line 374
    invoke-static/range {v5 .. v11}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    iget-object v5, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {v7, v4}, Lcom/powervision/newvisionplus/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$rationaleSb:Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 381
    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    .line 382
    invoke-virtual {v0, v2}, Lcom/powervision/newvisionplus/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->this$0:Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {v0, v1}, Lcom/powervision/newvisionplus/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/powervision/newvisionplus/-$$Lambda$WelcomeActivity$3$1xg37vPMZ9KKvpnWmWyyYSf9394;

    invoke-direct {v10, p0}, Lcom/powervision/newvisionplus/-$$Lambda$WelcomeActivity$3$1xg37vPMZ9KKvpnWmWyyYSf9394;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity$3;)V

    new-instance v11, Lcom/powervision/newvisionplus/-$$Lambda$WelcomeActivity$3$Vyt1UxB6ZJYKogpKb1Ynjlm8Z-E;

    invoke-direct {v11, p0}, Lcom/powervision/newvisionplus/-$$Lambda$WelcomeActivity$3$Vyt1UxB6ZJYKogpKb1Ynjlm8Z-E;-><init>(Lcom/powervision/newvisionplus/WelcomeActivity$3;)V

    .line 381
    invoke-static/range {v5 .. v11}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "permission  onError"

    .line 363
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Lcom/tbruyelle/rxpermissions2/Permission;)V
    .locals 4

    .line 338
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    if-eqz v0, :cond_0

    .line 340
    invoke-static {}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is granted"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    const-string v1, "\u3001"

    if-eqz v0, :cond_2

    .line 343
    invoke-static {}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is denied. More info should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$rationaleSb:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 352
    :cond_2
    invoke-static {}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is denied."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$deniedSb:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object p1, p0, Lcom/powervision/newvisionplus/WelcomeActivity$3;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p1, Lcom/tbruyelle/rxpermissions2/Permission;

    invoke-virtual {p0, p1}, Lcom/powervision/newvisionplus/WelcomeActivity$3;->onNext(Lcom/tbruyelle/rxpermissions2/Permission;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

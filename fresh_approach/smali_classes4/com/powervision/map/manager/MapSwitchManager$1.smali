.class Lcom/powervision/map/manager/MapSwitchManager$1;
.super Ljava/lang/Object;
.source "MapSwitchManager.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/map/manager/MapSwitchManager;->requestBasicPermission()V
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
.field final synthetic this$0:Lcom/powervision/map/manager/MapSwitchManager;

.field final synthetic val$deniedSb:Ljava/lang/StringBuilder;

.field final synthetic val$rationaleSb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/powervision/map/manager/MapSwitchManager;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    iput-object p2, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 9

    const-string v0, "permission  onComplete"

    .line 135
    invoke-static {v0}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-static {v0}, Lcom/powervision/map/manager/MapSwitchManager;->access$000(Lcom/powervision/map/manager/MapSwitchManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    .line 140
    invoke-static {v4}, Lcom/powervision/map/manager/MapSwitchManager;->access$000(Lcom/powervision/map/manager/MapSwitchManager;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/powervision/map/R$string;->AP03_Msg_139_5:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$deniedSb:Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 140
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    .line 142
    invoke-static {v0}, Lcom/powervision/map/manager/MapSwitchManager;->access$000(Lcom/powervision/map/manager/MapSwitchManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/map/R$string;->APP_Mine_15:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    .line 143
    invoke-static {v0}, Lcom/powervision/map/manager/MapSwitchManager;->access$000(Lcom/powervision/map/manager/MapSwitchManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/map/R$string;->AP03_Activation_9:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/powervision/map/manager/MapSwitchManager$1$1;

    invoke-direct {v7, p0}, Lcom/powervision/map/manager/MapSwitchManager$1$1;-><init>(Lcom/powervision/map/manager/MapSwitchManager$1;)V

    new-instance v8, Lcom/powervision/map/manager/MapSwitchManager$1$2;

    invoke-direct {v8, p0}, Lcom/powervision/map/manager/MapSwitchManager$1$2;-><init>(Lcom/powervision/map/manager/MapSwitchManager$1;)V

    .line 139
    invoke-static/range {v2 .. v8}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    invoke-static {v0}, Lcom/powervision/map/manager/MapSwitchManager;->access$000(Lcom/powervision/map/manager/MapSwitchManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    .line 158
    invoke-static {v4}, Lcom/powervision/map/manager/MapSwitchManager;->access$000(Lcom/powervision/map/manager/MapSwitchManager;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/powervision/map/R$string;->AP03_Msg_139_5:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 158
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    .line 160
    invoke-static {v0}, Lcom/powervision/map/manager/MapSwitchManager;->access$000(Lcom/powervision/map/manager/MapSwitchManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/map/R$string;->APP_Mine_15:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->this$0:Lcom/powervision/map/manager/MapSwitchManager;

    .line 161
    invoke-static {v0}, Lcom/powervision/map/manager/MapSwitchManager;->access$000(Lcom/powervision/map/manager/MapSwitchManager;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/powervision/map/R$string;->AP03_Activation_9:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/powervision/map/manager/MapSwitchManager$1$3;

    invoke-direct {v7, p0}, Lcom/powervision/map/manager/MapSwitchManager$1$3;-><init>(Lcom/powervision/map/manager/MapSwitchManager$1;)V

    new-instance v8, Lcom/powervision/map/manager/MapSwitchManager$1$4;

    invoke-direct {v8, p0}, Lcom/powervision/map/manager/MapSwitchManager$1$4;-><init>(Lcom/powervision/map/manager/MapSwitchManager$1;)V

    .line 157
    invoke-static/range {v2 .. v8}, Lcom/powervision/base/utils/DialogUtils;->customDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/powervision/base/utils/DialogUtils$OnClickListener;Lcom/powervision/base/utils/DialogUtils$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "permission  onError"

    .line 130
    invoke-static {p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Lcom/tbruyelle/rxpermissions2/Permission;)V
    .locals 4

    .line 105
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    const-string v1, "MapSwitchManager"

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is granted"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    const-string v2, "\u3001"

    if-eqz v0, :cond_2

    .line 110
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

    .line 112
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$rationaleSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 119
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

    .line 120
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$deniedSb:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->getPermissionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object p1, p0, Lcom/powervision/map/manager/MapSwitchManager$1;->val$deniedSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Lcom/tbruyelle/rxpermissions2/Permission;

    invoke-virtual {p0, p1}, Lcom/powervision/map/manager/MapSwitchManager$1;->onNext(Lcom/tbruyelle/rxpermissions2/Permission;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

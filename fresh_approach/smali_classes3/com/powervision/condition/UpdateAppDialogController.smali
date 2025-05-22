.class public Lcom/powervision/condition/UpdateAppDialogController;
.super Ljava/lang/Object;
.source "UpdateAppDialogController.java"

# interfaces
.implements Lcom/powervision/base/googleorchinainterface/BaseUpdateTemple;


# instance fields
.field baseEventListener:Lcom/powervision/base/listener/BaseEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEventListener(Lcom/powervision/base/listener/BaseEventListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/powervision/condition/UpdateAppDialogController;->baseEventListener:Lcom/powervision/base/listener/BaseEventListener;

    return-void
.end method

.method public showCommonDialog(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/Object;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    const-string v0, "lzqDia"

    const-string v1, "google show common"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    sget v1, Lcom/powervision/airmap/R$string;->APP_Msg_10:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/powervision/airmap/R$string;->AP03_AI_2:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 69
    new-instance p1, Lcom/powervision/condition/UpdateAppDialogController$2;

    invoke-direct {p1, p0, p3, p4}, Lcom/powervision/condition/UpdateAppDialogController$2;-><init>(Lcom/powervision/condition/UpdateAppDialogController;Ljava/lang/Object;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public showForceDialog(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/Object;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    const-string v0, "lzqDia"

    const-string v1, "google show force"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    sget v1, Lcom/powervision/airmap/R$string;->APP_Msg_10:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 48
    new-instance p1, Lcom/powervision/condition/UpdateAppDialogController$1;

    invoke-direct {p1, p0, p3, p4}, Lcom/powervision/condition/UpdateAppDialogController$1;-><init>(Lcom/powervision/condition/UpdateAppDialogController;Ljava/lang/Object;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

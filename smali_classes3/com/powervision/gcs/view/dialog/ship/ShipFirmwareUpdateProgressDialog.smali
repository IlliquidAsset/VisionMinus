.class public Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;
.super Landroid/app/ProgressDialog;
.source "ShipFirmwareUpdateProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog$Builder;
    }
.end annotation


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;

.field private title:Landroid/widget/TextView;

.field private updateRemind:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-direct {p0}, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;->setProgressStyle(I)V

    return-void
.end method


# virtual methods
.method public setMax(I)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 48
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method

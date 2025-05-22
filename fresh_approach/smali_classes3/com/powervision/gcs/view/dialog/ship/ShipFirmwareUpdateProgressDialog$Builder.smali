.class public Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog$Builder;
.super Ljava/lang/Object;
.source "ShipFirmwareUpdateProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dialog:Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog$Builder;->dialog:Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;

    return-void
.end method


# virtual methods
.method public build()Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog$Builder;->dialog:Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;

    return-object v0
.end method

.method public setTitle(I)Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog$Builder;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog$Builder;->dialog:Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;->setTitle(I)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog$Builder;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog$Builder;->dialog:Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;

    invoke-virtual {v0, p1}, Lcom/powervision/gcs/view/dialog/ship/ShipFirmwareUpdateProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

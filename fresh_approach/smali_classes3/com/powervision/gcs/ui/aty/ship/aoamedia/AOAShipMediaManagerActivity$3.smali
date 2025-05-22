.class Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;
.super Ljava/lang/Object;
.source "AOAShipMediaManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 243
    new-instance p1, Lcom/powervision/gcs/view/BottomDialog;

    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-direct {p1, v0}, Lcom/powervision/gcs/view/BottomDialog;-><init>(Landroid/content/Context;)V

    .line 244
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$600(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_55:I

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/BottomDialog;->setTips(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-static {v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$600(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 247
    sget v0, Lcom/powervision/gcs/R$string;->PVW4_Msg_55:I

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/BottomDialog;->setTips(I)V

    .line 249
    :cond_1
    :goto_0
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;Lcom/powervision/gcs/view/BottomDialog;)V

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/BottomDialog;->setCancelListener(Lcom/powervision/gcs/view/BottomDialog$OnCancelListener;)V

    .line 255
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3$2;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3$2;-><init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;Lcom/powervision/gcs/view/BottomDialog;)V

    invoke-virtual {p1, v0}, Lcom/powervision/gcs/view/BottomDialog;->setDeleteListener(Lcom/powervision/gcs/view/BottomDialog$OnDeleteListener;)V

    .line 267
    invoke-virtual {p1}, Lcom/powervision/gcs/view/BottomDialog;->show()V

    return-void
.end method

.class Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3$1;
.super Ljava/lang/Object;
.source "AOAShipMediaManagerActivity.java"

# interfaces
.implements Lcom/powervision/gcs/view/BottomDialog$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;

.field final synthetic val$dialog:Lcom/powervision/gcs/view/BottomDialog;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;Lcom/powervision/gcs/view/BottomDialog;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3$1;->val$dialog:Lcom/powervision/gcs/view/BottomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$3$1;->val$dialog:Lcom/powervision/gcs/view/BottomDialog;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/BottomDialog;->dismiss()V

    return-void
.end method

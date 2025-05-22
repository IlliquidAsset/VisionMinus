.class Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$4;
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

    .line 272
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "AOAShipMediaManager"

    const-string v0, "onClick: "

    .line 275
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$4;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$100(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$800(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Ljava/util/Map;)V

    return-void
.end method

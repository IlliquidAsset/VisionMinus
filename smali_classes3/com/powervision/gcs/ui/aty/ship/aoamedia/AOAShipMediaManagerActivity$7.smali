.class Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$7;
.super Ljava/lang/Object;
.source "AOAShipMediaManagerActivity.java"

# interfaces
.implements Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment$OnBottomListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->onBackPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

.field final synthetic val$fragment:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$7;->val$fragment:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$1200(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)Lcom/powervision/localhttp/PVW4DownloadManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelAllDownload(Z)V

    .line 686
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->finish()V

    goto :goto_0

    .line 681
    :cond_1
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-static {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->access$1200(Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;)Lcom/powervision/localhttp/PVW4DownloadManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/powervision/localhttp/PVW4DownloadManager;->cancelAllDownload(Z)V

    .line 682
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$7;->this$0:Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity;->finish()V

    .line 692
    :goto_0
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/aoamedia/AOAShipMediaManagerActivity$7;->val$fragment:Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/dialog/BottomListFragment;->dismissAllowingStateLoss()V

    return-void
.end method

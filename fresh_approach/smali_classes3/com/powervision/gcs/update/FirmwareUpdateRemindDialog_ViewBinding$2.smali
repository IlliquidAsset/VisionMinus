.class Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FirmwareUpdateRemindDialog_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;-><init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$2;->this$0:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$2;->val$target:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog_ViewBinding$2;->val$target:Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;

    invoke-virtual {p1}, Lcom/powervision/gcs/update/FirmwareUpdateRemindDialog;->doubleCancelBtn()V

    return-void
.end method

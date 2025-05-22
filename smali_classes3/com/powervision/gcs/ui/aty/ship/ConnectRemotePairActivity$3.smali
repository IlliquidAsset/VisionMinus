.class Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$3;
.super Ljava/lang/Object;
.source "ConnectRemotePairActivity.java"

# interfaces
.implements Lcom/powervision/gcs/update/PairedDialogFragment$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;->showPairedSucceedFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

.field final synthetic val$fragment:Lcom/powervision/gcs/update/PairedDialogFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;Lcom/powervision/gcs/update/PairedDialogFragment;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$3;->this$0:Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity;

    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$3;->val$fragment:Lcom/powervision/gcs/update/PairedDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onPositive()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ConnectRemotePairActivity$3;->val$fragment:Lcom/powervision/gcs/update/PairedDialogFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/update/PairedDialogFragment;->dismiss()V

    return-void
.end method

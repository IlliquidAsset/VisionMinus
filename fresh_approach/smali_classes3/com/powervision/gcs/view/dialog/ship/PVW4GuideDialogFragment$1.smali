.class Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment$1;
.super Ljava/lang/Object;
.source "PVW4GuideDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->initCommonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment$1;->this$0:Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 594
    invoke-static {p1}, Lcom/powervision/gcs/utils/SpStore;->setGuidePvw4Common(Z)V

    .line 595
    iget-object p1, p0, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment$1;->this$0:Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/view/dialog/ship/PVW4GuideDialogFragment;->dismiss()V

    return-void
.end method

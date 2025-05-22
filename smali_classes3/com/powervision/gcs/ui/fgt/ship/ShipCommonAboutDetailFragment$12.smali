.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$12;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->showErrorDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

.field final synthetic val$code:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;II)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$12;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iput p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$12;->val$type:I

    iput p3, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$12;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$12;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget v1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$12;->val$type:I

    iget v2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$12;->val$code:I

    invoke-static {v0, v1, v2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$600(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;II)V

    return-void
.end method

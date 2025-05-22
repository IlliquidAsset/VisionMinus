.class Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$1;
.super Ljava/lang/Object;
.source "PointSurroundFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->dealWithMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 489
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_AI_52:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(I)V

    .line 490
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/PointSurroundFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

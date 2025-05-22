.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$1;
.super Ljava/lang/Object;
.source "ShipCommonControlFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->initDragView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;I)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    iput p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$1;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 751
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$700(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$1;->val$finalI:I

    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    :cond_0
    return v0

    .line 754
    :cond_1
    iget-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;

    invoke-static {p2}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;->access$800(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$1;->val$finalI:I

    const/16 v1, 0xa

    if-eq p2, v1, :cond_2

    const/16 v1, 0xb

    if-ne p2, v1, :cond_3

    :cond_2
    return v0

    .line 757
    :cond_3
    iget p2, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonControlFragment$RockModeLogic$1;->val$finalI:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "value"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 758
    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return v2
.end method

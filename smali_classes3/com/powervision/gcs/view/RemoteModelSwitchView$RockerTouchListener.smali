.class Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;
.super Ljava/lang/Object;
.source "RemoteModelSwitchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/RemoteModelSwitchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RockerTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

.field private value:I


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/view/RemoteModelSwitchView;I)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p2, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;->value:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 213
    iget-object p2, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p2}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$400(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;->value:I

    if-nez p2, :cond_0

    return v0

    .line 216
    :cond_0
    iget-object p2, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;->this$0:Lcom/powervision/gcs/view/RemoteModelSwitchView;

    invoke-static {p2}, Lcom/powervision/gcs/view/RemoteModelSwitchView;->access$800(Lcom/powervision/gcs/view/RemoteModelSwitchView;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;->value:I

    if-ne p2, v0, :cond_1

    return v0

    .line 219
    :cond_1
    iget p2, p0, Lcom/powervision/gcs/view/RemoteModelSwitchView$RockerTouchListener;->value:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "value"

    invoke-static {v1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 220
    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return v0
.end method

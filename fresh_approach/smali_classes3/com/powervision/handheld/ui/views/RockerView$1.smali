.class Lcom/powervision/handheld/ui/views/RockerView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RockerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/handheld/ui/views/RockerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/ui/views/RockerView;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/ui/views/RockerView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView$1;->this$0:Lcom/powervision/handheld/ui/views/RockerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/powervision/handheld/ui/views/RockerView$1;->this$0:Lcom/powervision/handheld/ui/views/RockerView;

    invoke-static {p1}, Lcom/powervision/handheld/ui/views/RockerView;->access$000(Lcom/powervision/handheld/ui/views/RockerView;)Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/handheld/ui/views/RockerView$OnDirectionAndDistanceListener;->onDoubleCenter()V

    const/4 p1, 0x1

    return p1
.end method

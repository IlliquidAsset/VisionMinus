.class Lcom/powervision/base/views/widget/WheelItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelItemClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/widget/WheelItemClickListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/widget/WheelItemClickListener;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/widget/WheelItemClickListener;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelItemClickListener$1;->this$0:Lcom/powervision/base/views/widget/WheelItemClickListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

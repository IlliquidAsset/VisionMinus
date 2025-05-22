.class Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/views/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WheelViewObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/widget/WheelView;


# direct methods
.method private constructor <init>(Lcom/powervision/base/views/widget/WheelView;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powervision/base/views/widget/WheelView;Lcom/powervision/base/views/widget/WheelView$1;)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;-><init>(Lcom/powervision/base/views/widget/WheelView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {v0}, Lcom/powervision/base/views/widget/WheelView;->access$700(Lcom/powervision/base/views/widget/WheelView;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/powervision/base/views/widget/WheelView$WheelViewObserver;->this$0:Lcom/powervision/base/views/widget/WheelView;

    invoke-static {v0}, Lcom/powervision/base/views/widget/WheelView;->access$700(Lcom/powervision/base/views/widget/WheelView;)V

    return-void
.end method

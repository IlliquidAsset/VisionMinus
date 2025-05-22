.class Lcom/powervision/gcs/view/materialview/RippleView$1;
.super Ljava/lang/Object;
.source "RippleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/view/materialview/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/materialview/RippleView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/materialview/RippleView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/powervision/gcs/view/materialview/RippleView$1;->this$0:Lcom/powervision/gcs/view/materialview/RippleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/powervision/gcs/view/materialview/RippleView$1;->this$0:Lcom/powervision/gcs/view/materialview/RippleView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/materialview/RippleView;->invalidate()V

    return-void
.end method
